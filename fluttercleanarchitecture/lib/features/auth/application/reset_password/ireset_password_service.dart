import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/request/reset_password/reset_password_request.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IResetPasswordService {
  Future<Result<OnlyMessageModel, Failure>> resetPassword(
    ResetPasswordRequest data,
  );
}
