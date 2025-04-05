import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_account_request.freezed.dart';
part 'verify_account_request.g.dart';

@freezed
class VerifyAccountRequest with _$VerifyAccountRequest {
  const factory VerifyAccountRequest({
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "otp") required String otp,
  }) = _VerifyAccountRequest;

  factory VerifyAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyAccountRequestFromJson(json);
}
