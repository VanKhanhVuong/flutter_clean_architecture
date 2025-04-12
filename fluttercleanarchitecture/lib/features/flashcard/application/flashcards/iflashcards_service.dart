import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/create_flashcard_request/create_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/delete_flashcard_request/delete_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/edit_flashcard_request/edit_flashcard_request.dart';

import 'package:fluttercleanarchitecture/features/flashcard/domain/model/flashcard_model/flashcard_model.dart';
import 'package:fluttercleanarchitecture/features/flashcard/domain/model/flashcards_model/flashcards_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IFlashcardService {
  Future<Result<FlashCardModel, Failure>> createFlashcard(
    CreateFlashcardRequest data,
  );
  Future<Result<FlashCardModel, Failure>> updateFlashcard(
    EditFlashcardRequest data,
  );
  Future<Result<OnlyMessageModel, Failure>> deleteFlashcard(
    DeleteFlashcardRequest data,
  );
  Future<Result<FlashCardsModel, Failure>> getAllFlashcards();
}
