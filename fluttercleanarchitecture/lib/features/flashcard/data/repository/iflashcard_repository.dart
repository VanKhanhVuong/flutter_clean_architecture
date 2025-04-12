import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/create_flashcard_request/create_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/delete_flashcard_request/delete_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/edit_flashcard_request/edit_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/get_flashcards_request/get_flashcards_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_item_response/flashcard_item_response.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcards_response/flashcards_response.dart';

abstract interface class IFlashcardRepository {
  Future<FlashcardsResponse> getFlashcards(GetFlashcardsRequest data);
  Future<FlashcardItemResponse> editFlashcard(EditFlashcardRequest flashcard);
  Future<FlashcardItemResponse> addFlashcard(CreateFlashcardRequest flashcard);
  Future<OnlyMessageResponse> deleteFlashcard(DeleteFlashcardRequest flashcard);
}
