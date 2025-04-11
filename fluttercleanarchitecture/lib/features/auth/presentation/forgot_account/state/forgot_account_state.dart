import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_account_state.freezed.dart';

@freezed
class ForgotAccountState with _$ForgotAccountState {
  factory ForgotAccountState({
    OnlyMessageModel? forgotAccountStateModel,
    bool? isSuccess,
    @Default(false) bool isLoading,
    String? error,
    @Default({}) Map<String, dynamic> forgotAccountForm,
  }) = _ForgotAccountState;
}
