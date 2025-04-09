import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_verify_code_state.freezed.dart';

@freezed
class ResendVerifyCodeState with _$ResendVerifyCodeState {
  factory ResendVerifyCodeState({
    @Default(false) bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    @Default({}) Map<String, dynamic> resendVerifyCodeForm,
  }) = _ResendVerifyCodeState;
}
