import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_verify_code_response.freezed.dart';
part 'resend_verify_code_response.g.dart';

@freezed
class ResendVerifyCodeResponse with _$ResendVerifyCodeResponse {
  const factory ResendVerifyCodeResponse({
    @JsonKey(name: "success") required bool success,
    @JsonKey(name: "message") required String message,
  }) = _ResendVerifyCodeResponse;

  factory ResendVerifyCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ResendVerifyCodeResponseFromJson(json);
}
