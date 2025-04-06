import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/request/resend_reset_code/resend_reset_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/response/resend_reset_code/resend_reset_code_response.dart';

abstract interface class IResendResetCodeRepository {
  Future<ResendResetCodeResponse> resendResetCode(ResendResetCodeRequest data);
}
