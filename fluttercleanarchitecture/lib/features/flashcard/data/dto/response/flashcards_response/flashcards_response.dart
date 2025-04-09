import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_response/flashcard_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcards_response.freezed.dart';
part 'flashcards_response.g.dart';

@freezed
class FlashcardsResponse with _$FlashcardsResponse {
  const factory FlashcardsResponse({
    @JsonKey(name: "success") required bool success,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "flashcards_data")
    required List<FlashcardResponse> flashcardsData,
  }) = _FlashcardsResponse;

  factory FlashcardsResponse.fromJson(Map<String, dynamic> json) =>
      _$FlashcardsResponseFromJson(json);
}
