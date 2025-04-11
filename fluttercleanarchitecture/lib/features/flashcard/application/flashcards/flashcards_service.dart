import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/mapper/ionly_message_model_mapper.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/flashcard/application/flashcards/iflashcards_service.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/create_flashcard_request/create_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/delete_flashcard_request/delete_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/edit_flashcard_request/edit_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_item_response/flashcard_item_response.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcards_response/flashcards_response.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/repository/flashcard_repository.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/repository/iflashcard_repository.dart';
import 'package:fluttercleanarchitecture/features/flashcard/domain/mapper/iflashcard_model_mapper.dart';
import 'package:fluttercleanarchitecture/features/flashcard/domain/mapper/iflashcards_model_mapper.dart';
import 'package:fluttercleanarchitecture/features/flashcard/domain/model/flashcard_model/flashcard_model.dart';
import 'package:fluttercleanarchitecture/features/flashcard/domain/model/flashcards_model/flashcards_model.dart';
import 'package:multiple_result/multiple_result.dart';

final flashcardsServiceProvider = Provider<IFlashcardService>((ref) {
  final flashcardsRepository = ref.watch(flashcardsRepositoryProvider);
  return FlashcardsService(flashcardsRepository);
});

final class FlashcardsService
    implements
        IFlashcardService,
        IFlashcardsModelMapper,
        IFlashcardModelMapper,
        IOnlyMessageModelMapper {
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
  FlashCardModel mapToFlashCardModel(FlashcardItemResponse response) {
    return FlashCardModel(
      flashcard: response.flashcardData,
      success: true,
      message: response.message,
    );
  }

  @override
  OnlyMessageModel mapToOnlyMessageModel(OnlyMessageResponse response) {
    return OnlyMessageModel(
      success: response.success,
      message: response.message,
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

  @override
  Future<Result<FlashCardModel, Failure>> createFlashcard(
    CreateFlashcardRequest data,
  ) async {
    try {
      final response = await _flashcardRepository.addFlashcard(data);
      final model = mapToFlashCardModel(response);

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

  @override
  Future<Result<FlashCardModel, Failure>> updateFlashcard(
    EditFlashcardRequest data,
  ) async {
    try {
      final response = await _flashcardRepository.editFlashcard(data);
      final model = mapToFlashCardModel(response);

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

  @override
  Future<Result<OnlyMessageModel, Failure>> deleteFlashcard(
    DeleteFlashcardRequest data,
  ) async {
    try {
      final response = await _flashcardRepository.deleteFlashcard(data);
      final model = mapToOnlyMessageModel(response);

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
