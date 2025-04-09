import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/request/resend_verify_code/resend_verify_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/response/resend_verify_code/resend_verify_code_response.dart';

abstract interface class IResendVerifyCodeRepository {
  Future<ResendVerifyCodeResponse> resendVerifyCode(
    ResendVerifyCodeRequest data,
  );
}
