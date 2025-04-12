import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_flashcards_request.freezed.dart';
part 'get_flashcards_request.g.dart';

@freezed
class GetFlashcardsRequest with _$GetFlashcardsRequest {
  const factory GetFlashcardsRequest({
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "is_active") required int isActive,
  }) = _GetFlashcardsRequest;

  factory GetFlashcardsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetFlashcardsRequestFromJson(json);
}
