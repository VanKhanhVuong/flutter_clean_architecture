import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/flashcard/application/flashcards/flashcards_service.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/create_flashcard_request/create_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/state/create_flashcard/create_flashcard_state.dart';

final createFlashcardControllerProvider = AutoDisposeNotifierProvider<
  CreateFlashcardController,
  CreateFlashcardState
>(CreateFlashcardController.new);

class CreateFlashcardController
    extends AutoDisposeNotifier<CreateFlashcardState> {
  @override
  CreateFlashcardState build() {
    return CreateFlashcardState();
  }

  Future<void> createFlashcard() async {
    try {
      state = state.copyWith(
        isLoading: true,
        isSuccess: null,
        errorMessage: null,
      );

      final formData = CreateFlashcardRequest(
        question: state.flashcardFrom['question'],
        answer: state.flashcardFrom['answer'],
      );

      final result = await ref
          .read(flashcardsServiceProvider)
          .createFlashcard(formData);

      result.when(
        (success) {
          state = state.copyWith(
            isLoading: false,
            isSuccess: true,
            errorMessage: null,
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

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(flashcardFrom: formData);
  }
}
