import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/request/resend_verify_code/resend_verify_code_request.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IResendVerifyCodeService {
  Future<Result<OnlyMessageModel, Failure>> resendVerifyCode(
    ResendVerifyCodeRequest data,
  );
}
