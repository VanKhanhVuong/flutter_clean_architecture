import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/edit_flashcard_request/edit_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_item_response/flashcard_item_response.dart';
import 'package:retrofit/retrofit.dart';

part 'edit_flashcard_api.g.dart';

final editFlashcardApiProvider = Provider<EditFlashcardApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return EditFlashcardApi(dio);
});

@RestApi()
abstract class EditFlashcardApi {
  factory EditFlashcardApi(Dio dio) => _EditFlashcardApi(dio);

  @POST('/api/edit/flashcard')
  Future<FlashcardItemResponse> editFlashcard(
    @Body() EditFlashcardRequest body,
  );
}
