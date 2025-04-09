import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcards_response/flashcards_response.dart';
import 'package:retrofit/retrofit.dart';

part 'flashcards_api.g.dart';

final flashcardsApiProvider = Provider<FlashcardsApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return FlashcardsApi(dio);
});

@RestApi()
abstract class FlashcardsApi {
  factory FlashcardsApi(Dio dio) => _FlashcardsApi(dio);

  @GET('/api/flashcards')
  Future<FlashcardsResponse> getFlashcards();
}
