import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_request.freezed.dart';
part 'reset_password_request.g.dart';

@freezed
class ResetPasswordRequest with _$ResetPasswordRequest {
  const factory ResetPasswordRequest({
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "token") required String token,
    @JsonKey(name: "password") required String password,
    @JsonKey(name: "password_confirmation")
    required String passwordConfirmation,
  }) = _ResetPasswordRequest;

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestFromJson(json);
}
