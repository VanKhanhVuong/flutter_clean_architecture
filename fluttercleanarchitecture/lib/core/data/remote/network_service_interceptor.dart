import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/http_status/status_code.dart';
import 'package:fluttercleanarchitecture/core/data/remote/token/itoken_service.dart';
import 'package:fluttercleanarchitecture/core/data/remote/token/token_service.dart';

final networkServiceInterceptorProvider =
    Provider.family<NetworkServiceInterceptor, Dio>((ref, dio) {
      final tokenService = ref.watch(tokenServiceProvider(dio));
      return NetworkServiceInterceptor(tokenService, dio);
    });

final class NetworkServiceInterceptor extends Interceptor {
  // final ISecureStorage _secureStorage;
  final ITokenService _tokenService;
  final Dio _dio;

  NetworkServiceInterceptor(this._tokenService, this._dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await _tokenService.getAccessToken();
    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    options.headers['Authorization'] = 'Bearer $accessToken';
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == unauthorized) {
      final token = await _tokenService.getAccessToken();
      final refreshToken = await _tokenService.getRefreshToken();

      if (token != null && refreshToken != null) {
        try {
          final result = await _tokenService.refreshToken(refreshToken);
          final accessToken = result.accessToken;

          await _tokenService.setAccessRefreshToken(accessToken, refreshToken);

          final options = err.requestOptions;
          options.headers['Authorization'] = 'Bearer $accessToken';

          // Repeat the request with the new token
          return handler.resolve(await _dio.fetch(options));
        } on DioException catch (e) {
          if (e.response?.statusCode == unauthorized ||
              e.response?.statusCode == internalServerError ||
              e.response?.statusCode == invalidUser) {
            // Clear the access token and email from secure storage
            await _tokenService.clearTokens();
            return handler.next(e);
          }
          return handler.next(e);
        }
      }
    }
    // Continue with the error
    return handler.next(err);
  }
}
