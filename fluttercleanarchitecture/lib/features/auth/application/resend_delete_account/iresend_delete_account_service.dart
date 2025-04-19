import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/dto/request/resend_delete_account/resend_delete_account_request.dart';

import 'package:multiple_result/multiple_result.dart';

abstract interface class IResendDeleteAccountService {
  Future<Result<OnlyMessageModel, Failure>> resendDeleteAccount(
    ResendDeleteAccountRequest data,
  );
}
