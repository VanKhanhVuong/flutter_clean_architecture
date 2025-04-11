import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_item_response/flashcard_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_flashcard_state.freezed.dart';

@freezed
class DeleteFlashcardState with _$DeleteFlashcardState {
  factory DeleteFlashcardState({
    @Default(false) bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    FlashcardItemResponse? originalFlashcard,
  }) = _DeleteFlashcardState;
}
