import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';

@freezed
abstract class RegisterModel with _$RegisterModel {
  factory RegisterModel({required bool success, required String message}) =
      _RegisterModel;
}
