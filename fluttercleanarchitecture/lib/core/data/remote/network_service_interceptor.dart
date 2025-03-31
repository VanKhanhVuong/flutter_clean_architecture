import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/refresh_token_response.dart';
import 'package:fluttercleanarchitecture/common/http_status/status_code.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/isecure_storage.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/secure_storage.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/secure_storage_const.dart';

final networkServiceInterceptorProvider =
    Provider.family<NetworkServiceInterceptor, Dio>((ref, dio) {
      final secureStorage = ref.watch(secureStorageProvider);
      return NetworkServiceInterceptor(secureStorage, dio);
    });

final class NetworkServiceInterceptor extends Interceptor {
  final ISecureStorage _secureStorage;
  final Dio _dio;

  NetworkServiceInterceptor(this._secureStorage, this._dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await _secureStorage.read(accessTokenKey);
    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    options.headers['Authorization'] = 'Bearer $accessToken';
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == unauthorized) {
      final token = await _secureStorage.read(accessTokenKey);
      final email = await _secureStorage.read(emailKey);

      if (token != null && email != null) {
        try {
          final response = await _refreshToken(_dio, token, email);

          final json = response.data;
          final result = RefreshTokenResponse.fromJson(json ?? {});
          final statusCode = response.statusCode;
          if (statusCode == success && result.accessToken.isNotEmpty) {
            final refreshToken = result.accessToken;
            final email = result.user.email;

            // Store the new access token and email in secure storage
            await _storeAccessToken(refreshToken, email);

            final options = err.requestOptions;
            options.headers['Authorization'] = 'Bearer $refreshToken';

            // Repeat the request with the new token
            return handler.resolve(await _dio.fetch(options));
          }
        } on DioException catch (e) {
          if (e.response?.statusCode == unauthorized ||
              e.response?.statusCode == internalServerError ||
              e.response?.statusCode == invalidUser) {
            // Clear the access token and email from secure storage
            await _clearAccessToken();
            // Set error Status code to 500: Internal Server Error
            err.response?.statusCode = internalServerError;
            return handler.next(e);
          }
          return handler.next(e);
        }
      }
    }
    // Continue with the error
    return handler.next(err);
  }

  Future<void> _clearAccessToken() async {
    await _secureStorage.delete(accessTokenKey);
    await _secureStorage.delete(emailKey);
  }

  Future<void> _storeAccessToken(String refreshToken, String email) async {
    await _secureStorage.write(accessTokenKey, refreshToken);
    await _secureStorage.write(emailKey, email);
  }

  Future<Response<Map<String, dynamic>>> _refreshToken(
    Dio dio,
    String token,
    String email,
  ) async {
    return await _dio.post<Map<String, dynamic>>(
      '/api/refresh',
      queryParameters: {"email": email},
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
  }
}
