import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/settings/data/dto/request/logout_request.dart';
import 'package:retrofit/retrofit.dart';

part 'logout_api.g.dart';

final logoutApiProvider = Provider<LogoutApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return LogoutApi(dio);
});

@RestApi()
abstract class LogoutApi {
  factory LogoutApi(Dio dio) => _LogoutApi(dio);

  @POST('/api/logout')
  Future<OnlyMessageResponse> logout(@Body() LogoutRequest body);
}
