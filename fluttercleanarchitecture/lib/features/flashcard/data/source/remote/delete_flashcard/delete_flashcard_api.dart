import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/request/delete_flashcard_request/delete_flashcard_request.dart';
import 'package:retrofit/retrofit.dart';

part 'delete_flashcard_api.g.dart';

final deleteFlashcardApiProvider = Provider<DeleteFlashcardApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return DeleteFlashcardApi(dio);
});

@RestApi()
abstract class DeleteFlashcardApi {
  factory DeleteFlashcardApi(Dio dio) => _DeleteFlashcardApi(dio);

  @DELETE('/api/delete/flashcard')
  Future<OnlyMessageResponse> deleteFlashcard(
    @Body() DeleteFlashcardRequest body,
  );
}
