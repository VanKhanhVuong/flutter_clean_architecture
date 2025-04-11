import 'package:freezed_annotation/freezed_annotation.dart';

part 'only_message_response.freezed.dart';
part 'only_message_response.g.dart';

@freezed
class OnlyMessageResponse with _$OnlyMessageResponse {
  const factory OnlyMessageResponse({
    @JsonKey(name: "success") required bool success,
    @JsonKey(name: "message") required String message,
  }) = _OnlyMessageResponse;

  factory OnlyMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$OnlyMessageResponseFromJson(json);
}
