import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_response/flashcard_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_model.freezed.dart';

@freezed
class FlashCardModel with _$FlashCardModel {
  factory FlashCardModel({
    required bool success,
    required String message,
    required FlashcardResponse flashcard,
  }) = _FlashCardModel;
}
