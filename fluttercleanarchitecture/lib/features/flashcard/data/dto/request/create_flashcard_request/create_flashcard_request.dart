import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_flashcard_request.freezed.dart';
part 'create_flashcard_request.g.dart';

@freezed
class CreateFlashcardRequest with _$CreateFlashcardRequest {
  const factory CreateFlashcardRequest({
    @JsonKey(name: "question") required String question,
    @JsonKey(name: "answer") required String answer,
  }) = _CreateFlashcardRequest;

  factory CreateFlashcardRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateFlashcardRequestFromJson(json);
}
