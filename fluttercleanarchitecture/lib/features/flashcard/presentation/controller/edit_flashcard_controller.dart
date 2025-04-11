import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/flashcard/application/flashcards/flashcards_service.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/edit_flashcard_request/edit_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/state/edit_flashcard/edit_flashcard_state.dart';

final editFlashcardControllerProvider =
    AutoDisposeNotifierProvider<EditFlashcardController, EditFlashcardState>(
      EditFlashcardController.new,
    );

class EditFlashcardController extends AutoDisposeNotifier<EditFlashcardState> {
  @override
  EditFlashcardState build() {
    return EditFlashcardState();
  }

  Future<void> updateFlashcard(int id) async {
    try {
      state = state.copyWith(
        isLoading: true,
        isSuccess: null,
        errorMessage: null,
      );

      final formData = EditFlashcardRequest(
        question: state.editedFlashcardData['question'],
        answer: state.editedFlashcardData['answer'],
        flashcardId: id,
      );

      final result = await ref
          .read(flashcardsServiceProvider)
          .updateFlashcard(formData); // Gọi hàm update

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
    state = state.copyWith(editedFlashcardData: formData);
  }
}
