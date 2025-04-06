import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_account_request.freezed.dart';
part 'forgot_account_request.g.dart';

@freezed
class ForgotAccountRequest with _$ForgotAccountRequest {
  const factory ForgotAccountRequest({
    @JsonKey(name: "email") required String email,
  }) = _ForgotAccountRequest;

  factory ForgotAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgotAccountRequestFromJson(json);
}
