import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/request/resend_verify_code/resend_verify_code_request.dart';

abstract interface class IResendVerifyCodeRepository {
  Future<OnlyMessageResponse> resendVerifyCode(ResendVerifyCodeRequest data);
}
