import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/request/resend_reset_code/resend_reset_code_request.dart';

abstract interface class IResendResetCodeRepository {
  Future<OnlyMessageResponse> resendResetCode(ResendResetCodeRequest data);
}
