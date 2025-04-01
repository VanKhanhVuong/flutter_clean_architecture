import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/signup/data/dto/request/register_request.dart';
import 'package:retrofit/retrofit.dart';
import 'package:fluttercleanarchitecture/features/signup/data/dto/response/register_response.dart';

part 'register_api.g.dart';

final registerApiProvider = Provider<RegisterApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return RegisterApi(dio);
});

@RestApi()
abstract class RegisterApi {
  factory RegisterApi(Dio dio) => _RegisterApi(dio);

  @POST('/api/register')
  Future<RegisterResponse> registerUser(@Body() RegisterRequest body);
}
