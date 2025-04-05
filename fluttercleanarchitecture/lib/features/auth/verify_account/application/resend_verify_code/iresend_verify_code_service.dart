import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/request/resend_verify_code/resend_verify_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/domain/model/resend_verify_code/resend_verify_code_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IResendVerifyCodeService {
  Future<Result<ResendVerifyCodeModel, Failure>> resendVerifyCode(
    ResendVerifyCodeRequest data,
  );
}
