import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_item_response/flashcard_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_flashcard_state.freezed.dart';

@freezed
class EditFlashcardState with _$EditFlashcardState {
  factory EditFlashcardState({
    @Default(false) bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    FlashcardItemResponse? originalFlashcard,
    @Default({}) Map<String, dynamic> editedFlashcardData,
  }) = _EditFlashcardState;
}
