import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_model.freezed.dart';

@freezed
class LogoutModel with _$LogoutModel {
  factory LogoutModel({required bool success, required String message}) =
      _LogoutModel;
}
