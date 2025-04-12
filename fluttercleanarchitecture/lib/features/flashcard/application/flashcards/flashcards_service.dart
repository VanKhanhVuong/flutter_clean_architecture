import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/isecure_storage.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/secure_storage.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:fluttercleanarchitecture/core/domain/mapper/ionly_message_model_mapper.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/flashcard/application/flashcards/iflashcards_service.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/create_flashcard_request/create_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/delete_flashcard_request/delete_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/edit_flashcard_request/edit_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/get_flashcards_request/get_flashcards_request.dart';
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
  final secureStorage = ref.watch(secureStorageProvider);
  return FlashcardsService(flashcardsRepository, secureStorage);
});

final class FlashcardsService
    implements
        IFlashcardService,
        IFlashcardsModelMapper,
        IFlashcardModelMapper,
        IOnlyMessageModelMapper {
  final IFlashcardRepository _flashcardRepository;
  final ISecureStorage _secureStorage;
  FlashcardsService(this._flashcardRepository, this._secureStorage);

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
      final userIdStr = await _secureStorage.read(userIdKey);

      // Nếu userId là null hoặc không chuyển được thành số, throw lỗi
      if (userIdStr == null) {
        throw Failure(message: "User ID is null");
      }

      final userId = int.tryParse(userIdStr);
      if (userId == null) {
        throw Failure(message: "Invalid User ID format");
      }

      final data = GetFlashcardsRequest(userId: userId, isActive: 1);

      final response = await _flashcardRepository.getFlashcards(data);
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
