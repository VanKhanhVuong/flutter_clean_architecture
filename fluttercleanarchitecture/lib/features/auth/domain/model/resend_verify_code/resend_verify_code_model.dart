import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_verify_code_model.freezed.dart';

@freezed
class ResendVerifyCodeModel with _$ResendVerifyCodeModel {
  factory ResendVerifyCodeModel({
    required bool success,
    required String message,
  }) = _ResendVerifyCodeModel;
}
