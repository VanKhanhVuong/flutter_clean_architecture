import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_reset_code_state.freezed.dart';

@freezed
class ResendResetCodeState with _$ResendResetCodeState {
  factory ResendResetCodeState({
    @Default(false) bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    @Default({}) Map<String, dynamic> resendResetCodeForm,
  }) = _ResendResetCodeState;
}
