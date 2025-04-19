import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_delete_account_state.freezed.dart';

@freezed
class ResendDeleteAccountState with _$ResendDeleteAccountState {
  factory ResendDeleteAccountState({
    @Default(false) bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    @Default({}) Map<String, dynamic> resendDeleteAccountForm,
  }) = _ResendDeleteAccountState;
}
