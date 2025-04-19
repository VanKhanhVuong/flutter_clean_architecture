import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_account_request.freezed.dart';
part 'delete_account_request.g.dart';

@freezed
class DeleteAccountRequest with _$DeleteAccountRequest {
  const factory DeleteAccountRequest({
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "password") required String password,
    @JsonKey(name: "password_confirmation")
    required String passwordConfirmation,
  }) = _DeleteAccountRequest;

  factory DeleteAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountRequestFromJson(json);
}
