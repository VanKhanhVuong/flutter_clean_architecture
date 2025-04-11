import 'package:fluttercleanarchitecture/common/dtos/refresh_token_response/refresh_token_response.dart';

abstract interface class ITokenService {
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> setAccessRefreshToken(String accessToken, String refreshToken);
  Future<void> clearTokens();
  Future<RefreshTokenResponse> refreshToken(String? refreshToken);
}
