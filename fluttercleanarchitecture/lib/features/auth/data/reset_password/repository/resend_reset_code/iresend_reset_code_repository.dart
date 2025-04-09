import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/request/resend_reset_code/resend_reset_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/response/resend_reset_code/resend_reset_code_response.dart';

abstract interface class IResendResetCodeRepository {
  Future<ResendResetCodeResponse> resendResetCode(ResendResetCodeRequest data);
}
