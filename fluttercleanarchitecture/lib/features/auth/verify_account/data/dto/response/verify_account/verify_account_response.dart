import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_account_response.freezed.dart';
part 'verify_account_response.g.dart';

@freezed
class VerifyAccountResponse with _$VerifyAccountResponse {
  const factory VerifyAccountResponse({
    @JsonKey(name: "success") required bool success,
    @JsonKey(name: "message") required String message,
  }) = _VerifyAccountResponse;

  factory VerifyAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyAccountResponseFromJson(json);
}
