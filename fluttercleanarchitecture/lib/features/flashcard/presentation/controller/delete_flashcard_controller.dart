import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/flashcard/application/flashcards/flashcards_service.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/delete_flashcard_request/delete_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/state/delete_flashcard/delete_flashcard_state.dart';

final deleteFlashcardControllerProvider = AutoDisposeNotifierProvider<
  DeleteFlashcardController,
  DeleteFlashcardState
>(DeleteFlashcardController.new);

class DeleteFlashcardController
    extends AutoDisposeNotifier<DeleteFlashcardState> {
  @override
  DeleteFlashcardState build() {
    return DeleteFlashcardState();
  }

  Future<void> deleteFlashcard(int id) async {
    try {
      state = state.copyWith(
        isLoading: true,
        isSuccess: null,
        errorMessage: null,
      );

      final formData = DeleteFlashcardRequest(flashcardId: id);

      final result = await ref
          .read(flashcardsServiceProvider)
          .deleteFlashcard(formData); // Gọi hàm delte

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
}
