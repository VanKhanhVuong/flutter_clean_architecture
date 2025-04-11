import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_response/flashcard_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_state.freezed.dart';

@freezed
class FlashcardsState with _$FlashcardsState {
  factory FlashcardsState({
    @Default(false) bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    @Default([]) List<FlashcardResponse> flashcards,
  }) = _FlashcardsState;
}
