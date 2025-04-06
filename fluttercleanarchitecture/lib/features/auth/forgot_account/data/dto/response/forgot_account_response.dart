import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_account_response.freezed.dart';
part 'forgot_account_response.g.dart';

@freezed
class ForgotAccountResponse with _$ForgotAccountResponse {
  const factory ForgotAccountResponse({
    @JsonKey(name: "success") required bool success,
    @JsonKey(name: "message") required String message,
  }) = _ForgotAccountResponse;

  factory ForgotAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotAccountResponseFromJson(json);
}
