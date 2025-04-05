import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/response/resend_verify_code/resend_verify_code_response.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/domain/model/resend_verify_code/resend_verify_code_model.dart';

abstract interface class IResendVerifyCodeModelMapper {
  ResendVerifyCodeModel mapToResendVerifyCodeModel(
    ResendVerifyCodeResponse response,
  );
}
