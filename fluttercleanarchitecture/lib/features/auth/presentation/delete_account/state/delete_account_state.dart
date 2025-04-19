import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_account_state.freezed.dart';

@freezed
class DeleteAccountState with _$DeleteAccountState {
  factory DeleteAccountState({
    @Default(false) bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    @Default({}) Map<String, dynamic> deleteAccountFrom,
  }) = _DeleteAccountState;
}
