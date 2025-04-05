import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/request/resend_verify_code/resend_verify_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/response/resend_verify_code/resend_verify_code_response.dart';
import 'package:retrofit/retrofit.dart';

part 'resend_verify_code_api.g.dart';

final resendVerifyCodeApiProvider = Provider<ResendVerifyCodeApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return ResendVerifyCodeApi(dio);
});

@RestApi()
abstract class ResendVerifyCodeApi {
  factory ResendVerifyCodeApi(Dio dio) => _ResendVerifyCodeApi(dio);

  @POST('/api/resend/otp')
  Future<ResendVerifyCodeResponse> resendVerifyCode(
    @Body() ResendVerifyCodeRequest body,
  );
}
