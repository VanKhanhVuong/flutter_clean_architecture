import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/dto/request/resend_delete_account/resend_delete_account_request.dart';
import 'package:retrofit/retrofit.dart';

part 'resend_delete_account_api.g.dart';

final resendDeleteAccountApiProvider = Provider<ResendDeleteAccountApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return ResendDeleteAccountApi(dio);
});

@RestApi()
abstract class ResendDeleteAccountApi {
  factory ResendDeleteAccountApi(Dio dio) => _ResendDeleteAccountApi(dio);

  @POST('/api/resend/otp/delete/account')
  Future<OnlyMessageResponse> resendDeleteAccount(
    @Body() ResendDeleteAccountRequest body,
  );
}
