import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_account_model.freezed.dart';

@freezed
class ForgotAccountModel with _$ForgotAccountModel {
  factory ForgotAccountModel({required bool success, required String message}) =
      _ForgotAccountModel;
}
