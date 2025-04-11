import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_flashcard_request.freezed.dart';
part 'edit_flashcard_request.g.dart';

@freezed
class EditFlashcardRequest with _$EditFlashcardRequest {
  const factory EditFlashcardRequest({
    @JsonKey(name: "flashcard_id") required int flashcardId,
    @JsonKey(name: "question") required String question,
    @JsonKey(name: "answer") required String answer,
  }) = _EditFlashcardRequest;

  factory EditFlashcardRequest.fromJson(Map<String, dynamic> json) =>
      _$EditFlashcardRequestFromJson(json);
}
