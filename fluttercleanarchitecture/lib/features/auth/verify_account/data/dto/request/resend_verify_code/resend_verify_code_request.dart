import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_verify_code_request.freezed.dart';
part 'resend_verify_code_request.g.dart';

@freezed
class ResendVerifyCodeRequest with _$ResendVerifyCodeRequest {
  const factory ResendVerifyCodeRequest({
    @JsonKey(name: "email") required String email,
  }) = _ResendVerifyCodeRequest;

  factory ResendVerifyCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$ResendVerifyCodeRequestFromJson(json);
}
