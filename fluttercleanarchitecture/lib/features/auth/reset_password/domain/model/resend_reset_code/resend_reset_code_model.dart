import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_reset_code_model.freezed.dart';

@freezed
class ResendResetCodeModel with _$ResendResetCodeModel {
  factory ResendResetCodeModel({
    required bool success,
    required String message,
  }) = _ResendResetCodeModel;
}
