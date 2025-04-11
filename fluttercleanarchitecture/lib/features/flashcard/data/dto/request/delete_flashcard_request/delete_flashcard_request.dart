import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_flashcard_request.freezed.dart';
part 'delete_flashcard_request.g.dart';

@freezed
class DeleteFlashcardRequest with _$DeleteFlashcardRequest {
  const factory DeleteFlashcardRequest({
    @JsonKey(name: "flashcard_id") required int flashcardId,
  }) = _DeleteFlashcardRequest;

  factory DeleteFlashcardRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteFlashcardRequestFromJson(json);
}
