import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/response/resend_reset_code/resend_reset_code_response.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/domain/model/resend_reset_code/resend_reset_code_model.dart';

abstract interface class IResendResetCodeModelMapper {
  ResendResetCodeModel mapToResendResetCodeModel(
    ResendResetCodeResponse response,
  );
}
