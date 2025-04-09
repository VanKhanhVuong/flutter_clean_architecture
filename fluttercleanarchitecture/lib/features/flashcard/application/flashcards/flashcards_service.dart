import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/flashcard/application/flashcards/iflashcards_service.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcards_response/flashcards_response.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/repository/flashcard_repository.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/repository/iflashcard_repository.dart';
import 'package:fluttercleanarchitecture/features/flashcard/domain/mapper/iflashcards_model_mapper.dart';
import 'package:fluttercleanarchitecture/features/flashcard/domain/model/flashcards_model/flashcards_model.dart';
import 'package:multiple_result/multiple_result.dart';

final flashcardsServiceProvider = Provider<IFlashcardService>((ref) {
  final flashcardsRepository = ref.watch(flashcardsRepositoryProvider);
  return FlashcardsService(flashcardsRepository);
});

final class FlashcardsService
    implements IFlashcardService, IFlashcardsModelMapper {
  final IFlashcardRepository _flashcardRepository;
  FlashcardsService(this._flashcardRepository);

  @override
  FlashCardsModel mapToFlashCardsModel(FlashcardsResponse response) {
    return FlashCardsModel(
      success: true,
      message: response.message,
      flashcards: response.flashcardsData,
    );
  }

  @override
  Future<Result<FlashCardsModel, Failure>> getAllFlashcards() async {
    try {
      final response = await _flashcardRepository.getFlashcards();
      final model = mapToFlashCardsModel(response);

      return Success(model);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }
}
