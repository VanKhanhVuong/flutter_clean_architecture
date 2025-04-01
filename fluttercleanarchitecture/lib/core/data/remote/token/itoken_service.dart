import 'package:fluttercleanarchitecture/common/dtos/refresh_token_response.dart';

abstract interface class ITokenService {
  Future<String?> getAccessToken();
  Future<String?> getEmail();
  Future<void> setAccessTokenEmail(String token, String email);
  Future<void> clearTokens();
  Future<RefreshTokenResponse> refreshToken(
    String? refreshToken,
    String? email,
  );
}
