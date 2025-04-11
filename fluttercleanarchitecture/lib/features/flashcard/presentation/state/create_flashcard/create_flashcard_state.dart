import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_item_response/flashcard_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_flashcard_state.freezed.dart';

@freezed
class CreateFlashcardState with _$CreateFlashcardState {
  factory CreateFlashcardState({
    @Default(false) bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    FlashcardItemResponse? flashcard,
    @Default({}) Map<String, dynamic> flashcardFrom,
  }) = _CreateFlashcardState;
}
