import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/flashcard/domain/model/flashcards_model/flashcards_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IFlashcardService {
  // Future<Result<FlashcardModel, Failure>> createFlashcard(FlashcardRequest data);
  // Future<Result<FlashcardModel, Failure>> updateFlashcard(FlashcardRequest data);
  // Future<Result<FlashcardModel, Failure>> deleteFlashcard(String id);
  Future<Result<FlashCardsModel, Failure>> getAllFlashcards();
}
