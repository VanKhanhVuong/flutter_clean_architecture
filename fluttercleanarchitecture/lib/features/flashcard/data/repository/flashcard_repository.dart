import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcards_response/flashcards_response.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/repository/iflashcard_repository.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/source/remote/get_flashcards/flashcards_api.dart';

final flashcardsRepositoryProvider = Provider<IFlashcardRepository>((ref) {
  final flashcardsApi = ref.watch(flashcardsApiProvider);
  return FlashcardRepository(flashcardsApi);
});

final class FlashcardRepository implements IFlashcardRepository {
  final FlashcardsApi _flashcardsApi;
  FlashcardRepository(this._flashcardsApi);

  @override
  Future<FlashcardsResponse> getFlashcards() {
    try {
      final response = _flashcardsApi.getFlashcards();
      return response;
    } on DioException catch (_) {
      rethrow;
    }
  }
}
