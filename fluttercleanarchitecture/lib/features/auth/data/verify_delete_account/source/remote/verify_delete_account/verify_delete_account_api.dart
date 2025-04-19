import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/dto/request/verify_delete_account/verify_delete_account_request.dart';
import 'package:retrofit/retrofit.dart';

part 'verify_delete_account_api.g.dart';

final verifyDeleteAccountApiProvider = Provider<VerifyDeleteAccountApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return VerifyDeleteAccountApi(dio);
});

@RestApi()
abstract class VerifyDeleteAccountApi {
  factory VerifyDeleteAccountApi(Dio dio) => _VerifyDeleteAccountApi(dio);

  @POST('/api/delete/account')
  Future<OnlyMessageResponse> verifyDeleteAccount(
    @Body() VerifyDeleteAccountRequest body,
  );
}
