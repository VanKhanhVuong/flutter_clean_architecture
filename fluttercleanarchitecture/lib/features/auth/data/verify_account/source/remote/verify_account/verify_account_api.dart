import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/request/verify_account/verify_account_request.dart';

part 'verify_account_api.g.dart';

final verifyAccountApiProvider = Provider<VerifyAccountApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return VerifyAccountApi(dio);
});

@RestApi()
abstract class VerifyAccountApi {
  factory VerifyAccountApi(Dio dio) => _VerifyAccountApi(dio);

  @POST('/api/verify/email')
  Future<OnlyMessageResponse> verifyAccount(@Body() VerifyAccountRequest body);
}
