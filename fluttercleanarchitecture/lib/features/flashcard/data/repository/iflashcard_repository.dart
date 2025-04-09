import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcards_response/flashcards_response.dart';

abstract interface class IFlashcardRepository {
  Future<FlashcardsResponse> getFlashcards();
}
