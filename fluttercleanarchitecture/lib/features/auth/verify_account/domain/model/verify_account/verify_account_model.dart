import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_account_model.freezed.dart';

@freezed
class VerifyAccountModel with _$VerifyAccountModel {
  factory VerifyAccountModel({required bool success, required String message}) =
      _VerifyAccountModel;
}
