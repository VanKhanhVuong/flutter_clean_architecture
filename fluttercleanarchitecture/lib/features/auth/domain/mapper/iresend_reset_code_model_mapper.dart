import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/response/resend_reset_code/resend_reset_code_response.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/model/resend_reset_code/resend_reset_code_model.dart';

abstract interface class IResendResetCodeModelMapper {
  ResendResetCodeModel mapToResendResetCodeModel(
    ResendResetCodeResponse response,
  );
}
