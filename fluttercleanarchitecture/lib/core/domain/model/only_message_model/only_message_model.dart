import 'package:freezed_annotation/freezed_annotation.dart';

part 'only_message_model.freezed.dart';

@freezed
class OnlyMessageModel with _$OnlyMessageModel {
  factory OnlyMessageModel({required bool success, required String message}) =
      _OnlyMessageModel;
}
