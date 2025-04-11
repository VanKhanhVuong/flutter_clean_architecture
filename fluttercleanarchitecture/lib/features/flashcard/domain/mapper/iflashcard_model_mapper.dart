import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_item_response/flashcard_item_response.dart';
import 'package:fluttercleanarchitecture/features/flashcard/domain/model/flashcard_model/flashcard_model.dart';

abstract interface class IFlashcardModelMapper {
  FlashCardModel mapToFlashCardModel(FlashcardItemResponse response);
}
