import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/dto/request/forgot_account_request.dart';
import 'package:retrofit/retrofit.dart';

part 'forgot_account_api.g.dart';

final forgotAccountApiProvider = Provider<ForgotAccountApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return ForgotAccountApi(dio);
});

@RestApi()
abstract class ForgotAccountApi {
  factory ForgotAccountApi(Dio dio) => _ForgotAccountApi(dio);

  @POST('/api/forgot/password')
  Future<OnlyMessageResponse> forgotAccount(@Body() ForgotAccountRequest body);
}
