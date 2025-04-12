import 'package:fluttercleanarchitecture/features/auth/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: "refresh_token") required String refreshToken,
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "token_type") required String tokenType,
    @JsonKey(name: "user") required User user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
