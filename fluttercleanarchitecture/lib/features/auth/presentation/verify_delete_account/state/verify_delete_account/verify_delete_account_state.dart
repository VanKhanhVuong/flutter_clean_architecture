import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_delete_account_state.freezed.dart';

@freezed
class VerifyDeleteAccountState with _$VerifyDeleteAccountState {
  factory VerifyDeleteAccountState({
    @Default(false) bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    @Default({}) Map<String, dynamic> verifyDeleteAccountForm,
  }) = _VerifyDeleteAccountState;
}
