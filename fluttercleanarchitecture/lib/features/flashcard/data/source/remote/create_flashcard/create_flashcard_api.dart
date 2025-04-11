import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/create_flashcard_request/create_flashcard_request.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_item_response/flashcard_item_response.dart';
import 'package:retrofit/retrofit.dart';

part 'create_flashcard_api.g.dart';

final createFlashcardApiProvider = Provider<CreateFlashcardApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return CreateFlashcardApi(dio);
});

@RestApi()
abstract class CreateFlashcardApi {
  factory CreateFlashcardApi(Dio dio) => _CreateFlashcardApi(dio);

  @POST('/api/add/flashcard')
  Future<FlashcardItemResponse> createFlashcard(
    @Body() CreateFlashcardRequest body,
  );
}
