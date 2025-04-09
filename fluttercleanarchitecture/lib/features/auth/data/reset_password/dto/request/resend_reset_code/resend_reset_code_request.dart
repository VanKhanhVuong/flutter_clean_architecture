import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_reset_code_request.freezed.dart';
part 'resend_reset_code_request.g.dart';

@freezed
class ResendResetCodeRequest with _$ResendResetCodeRequest {
  const factory ResendResetCodeRequest({
    @JsonKey(name: "email") required String email,
  }) = _ResetPasswordRequest;

  factory ResendResetCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$ResendResetCodeRequestFromJson(json);
}
