import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/refresh_token_response/refresh_token_response.dart';
import 'package:fluttercleanarchitecture/common/http_status/status_code.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/isecure_storage.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/secure_storage.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:fluttercleanarchitecture/core/data/remote/token/itoken_service.dart';

final tokenServiceProvider = Provider.family<ITokenService, Dio>((ref, dio) {
  final secureStorage = ref.watch(secureStorageProvider);
  return TokenService(secureStorage, dio);
});

class TokenService implements ITokenService {
  final Dio _dio;
  final ISecureStorage _secureStorage;

  TokenService(this._secureStorage, this._dio);

  @override
  Future<void> clearTokens() {
    return Future.wait([
      _secureStorage.delete(accessTokenKey),
      _secureStorage.delete(refreshTokenKey),
      _secureStorage.delete(userIdKey),
    ]);
  }

  @override
  Future<String?> getAccessToken() => _secureStorage.read(accessTokenKey);

  @override
  Future<RefreshTokenResponse> refreshToken(String? refreshToken) async {
    final response = await _dio.post<Map<String, dynamic>>(
      '/api/refresh',
      queryParameters: {"refresh_token": refreshToken},
    );
    if (response.statusCode == success) {
      return RefreshTokenResponse.fromJson(response.data ?? {});
    } else {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
      );
    }
  }

  @override
  Future<String?> getRefreshToken() => _secureStorage.read(refreshTokenKey);

  @override
  Future<void> setAccessRefreshToken(String accessToken, String refreshToken) {
    return Future.wait([
      _secureStorage.write(accessTokenKey, accessToken),
      _secureStorage.write(refreshTokenKey, refreshToken),
    ]);
  }
}
