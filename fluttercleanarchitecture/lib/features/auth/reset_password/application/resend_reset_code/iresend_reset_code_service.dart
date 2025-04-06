import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/request/resend_reset_code/resend_reset_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/domain/model/resend_reset_code/resend_reset_code_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IResendResetCodeService {
  Future<Result<ResendResetCodeModel, Failure>> resendResetCode(
    ResendResetCodeRequest data,
  );
}
