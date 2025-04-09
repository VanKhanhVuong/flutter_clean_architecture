import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_response/flashcard_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcards_model.freezed.dart';

@freezed
class FlashCardsModel with _$FlashCardsModel {
  factory FlashCardsModel({
    required bool success,
    required String message,
    required List<FlashcardResponse> flashcards,
  }) = _FlashCardsModel;
}
