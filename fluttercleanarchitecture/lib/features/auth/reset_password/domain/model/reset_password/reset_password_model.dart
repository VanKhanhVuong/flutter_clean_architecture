import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_model.freezed.dart';

@freezed
class ResetPasswordModel with _$ResetPasswordModel {
  factory ResetPasswordModel({required bool success, required String message}) =
      _ResetPasswordModel;
}
