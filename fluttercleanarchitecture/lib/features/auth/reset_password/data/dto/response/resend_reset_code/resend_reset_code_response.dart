import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_reset_code_response.freezed.dart';
part 'resend_reset_code_response.g.dart';

@freezed
class ResendResetCodeResponse with _$ResendResetCodeResponse {
  const factory ResendResetCodeResponse({
    @JsonKey(name: "success") required bool success,
    @JsonKey(name: "message") required String message,
  }) = _ResendResetCodeResponse;

  factory ResendResetCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ResendResetCodeResponseFromJson(json);
}
