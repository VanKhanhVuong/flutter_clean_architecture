import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/request/resend_reset_code/resend_reset_code_request.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IResendResetCodeService {
  Future<Result<OnlyMessageModel, Failure>> resendResetCode(
    ResendResetCodeRequest data,
  );
}
