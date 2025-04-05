import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_account_state.freezed.dart';

@freezed
class VerifyAccountState with _$VerifyAccountState {
  factory VerifyAccountState({
    @Default(false) bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    @Default({}) Map<String, dynamic> verifyAccountForm,
  }) = _VerifyAccountState;
}
