import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcards_response/flashcards_response.dart';
import 'package:fluttercleanarchitecture/features/flashcard/domain/model/flashcards_model/flashcards_model.dart';

abstract interface class IFlashcardsModelMapper {
  FlashCardsModel mapToFlashCardsModel(FlashcardsResponse response);
}
