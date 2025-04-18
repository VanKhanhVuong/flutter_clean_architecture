import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/utils/parse_error_util.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/create_flashcard_request/create_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/delete_flashcard_request/delete_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/edit_flashcard_request/edit_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_item_response/flashcard_item_response.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcards_response/flashcards_response.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/repository/iflashcard_repository.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/source/remote/create_flashcard/create_flashcard_api.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/source/remote/delete_flashcard/delete_flashcard_api.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/source/remote/edit_flashcard/edit_flashcard_api.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/source/remote/get_flashcards/flashcards_api.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';

final flashcardsRepositoryProvider = Provider<IFlashcardRepository>((ref) {
  final flashcardsApi = ref.watch(flashcardsApiProvider);
  final createFlashcardApi = ref.watch(createFlashcardApiProvider);
  final editFlashcardApi = ref.watch(editFlashcardApiProvider);
  final deleteFlashcardApi = ref.watch(deleteFlashcardApiProvider);

  return FlashcardRepository(
    flashcardsApi,
    createFlashcardApi,
    editFlashcardApi,
    deleteFlashcardApi,
  );
});

final class FlashcardRepository implements IFlashcardRepository {
  final FlashcardsApi _flashcardsApi;
  final CreateFlashcardApi _createFlashcardApi;
  final EditFlashcardApi _editFlashcardApi;
  final DeleteFlashcardApi _deleteFlashcardApi;

  FlashcardRepository(
    this._flashcardsApi,
    this._createFlashcardApi,
    this._editFlashcardApi,
    this._deleteFlashcardApi,
  );

  @override
  Future<FlashcardsResponse> getFlashcards(data) async {
    try {
      final response = _flashcardsApi.getFlashcards(data);
      return response;
    } on DioException catch (e) {
      final errorMessage = parseValidationError(e.response?.data['error']);
      throw Failure(message: errorMessage);
    } catch (e, s) {
      throw Failure(
        message: 'Unexpected error: $e',
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: s,
      );
    }
  }

  @override
  Future<FlashcardItemResponse> addFlashcard(
    CreateFlashcardRequest flashcard,
  ) async {
    try {
      final response = await _createFlashcardApi.createFlashcard(flashcard);
      return response;
    } on DioException catch (e) {
      final errorMessage = parseValidationError(e.response?.data['error']);
      throw Failure(message: errorMessage);
    } catch (e, s) {
      throw Failure(
        message: 'Unexpected error: $e',
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: s,
      );
    }
  }

  @override
  Future<FlashcardItemResponse> editFlashcard(
    EditFlashcardRequest flashcard,
  ) async {
    try {
      final response = await _editFlashcardApi.editFlashcard(flashcard);
      return response;
    } on DioException catch (e) {
      final errorMessage = parseValidationError(e.response?.data['error']);
      throw Failure(message: errorMessage);
    } catch (e, s) {
      throw Failure(
        message: 'Unexpected error: $e',
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: s,
      );
    }
  }

  @override
  Future<OnlyMessageResponse> deleteFlashcard(
    DeleteFlashcardRequest flashcard,
  ) async {
    try {
      final response = await _deleteFlashcardApi.deleteFlashcard(flashcard);
      return response;
    } on DioException catch (e) {
      final errorMessage = parseValidationError(e.response?.data['error']);
      throw Failure(message: errorMessage);
    } catch (e, s) {
      throw Failure(
        message: 'Unexpected error: $e',
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: s,
      );
    }
  }
}
