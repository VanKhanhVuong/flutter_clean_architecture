import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/request/resend_verify_code/resend_verify_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/response/resend_verify_code/resend_verify_code_response.dart';

abstract interface class IResendVerifyCodeRepository {
  Future<ResendVerifyCodeResponse> resendVerifyCode(
    ResendVerifyCodeRequest data,
  );
}
