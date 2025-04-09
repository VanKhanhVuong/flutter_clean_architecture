import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/response/resend_verify_code/resend_verify_code_response.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/model/resend_verify_code/resend_verify_code_model.dart';

abstract interface class IResendVerifyCodeModelMapper {
  ResendVerifyCodeModel mapToResendVerifyCodeModel(
    ResendVerifyCodeResponse response,
  );
}
