import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_delete_account_request.freezed.dart';
part 'verify_delete_account_request.g.dart';

@freezed
class VerifyDeleteAccountRequest with _$VerifyDeleteAccountRequest {
  const factory VerifyDeleteAccountRequest({
    @JsonKey(name: "otp") required String otp,
  }) = _VerifyDeleteAccountRequest;

  factory VerifyDeleteAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyDeleteAccountRequestFromJson(json);
}
