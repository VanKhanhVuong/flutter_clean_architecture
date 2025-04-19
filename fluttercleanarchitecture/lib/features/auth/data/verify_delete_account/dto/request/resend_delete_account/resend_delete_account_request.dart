import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_delete_account_request.freezed.dart';
part 'resend_delete_account_request.g.dart';

@freezed
class ResendDeleteAccountRequest with _$ResendDeleteAccountRequest {
  const factory ResendDeleteAccountRequest({
    @JsonKey(name: "email") required String email,
  }) = _ResendDeleteAccountRequest;

  factory ResendDeleteAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$ResendDeleteAccountRequestFromJson(json);
}
