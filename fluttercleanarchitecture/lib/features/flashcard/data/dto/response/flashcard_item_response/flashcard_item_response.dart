import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_response/flashcard_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_item_response.freezed.dart';
part 'flashcard_item_response.g.dart';

@freezed
class FlashcardItemResponse with _$FlashcardItemResponse {
  const factory FlashcardItemResponse({
    @JsonKey(name: "success") required bool success,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "flashcard_data") required FlashcardResponse flashcardData,
  }) = _FlashcardItemResponse;

  factory FlashcardItemResponse.fromJson(Map<String, dynamic> json) =>
      _$FlashcardItemResponseFromJson(json);
}
