import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/flashcard/application/flashcards/flashcards_service.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/state/flashcard_state.dart';

final flashcardControllerProvider =
    AutoDisposeNotifierProvider<FlashcardController, FlashcardState>(
      FlashcardController.new,
    );

class FlashcardController extends AutoDisposeNotifier<FlashcardState> {
  @override
  FlashcardState build() {
    return FlashcardState();
  }

  Future<void> getFlashcards() async {
    try {
      state = state.copyWith(
        isLoading: true,
        isSuccess: null,
        errorMessage: null,
      );

      final result =
          await ref.read(flashcardsServiceProvider).getAllFlashcards();
      result.when(
        (success) {
          state = state.copyWith(
            isLoading: false,
            isSuccess: true,
            errorMessage: null,
            flashcards: success.flashcards,
          );
        },
        (failure) {
          state = state.copyWith(
            isLoading: false,
            isSuccess: false,
            errorMessage: failure.message,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isSuccess: null,
        errorMessage: e.toString(),
      );
    }
  }
}
