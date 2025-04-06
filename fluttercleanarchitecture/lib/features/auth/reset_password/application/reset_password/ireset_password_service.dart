import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/request/reset_password/reset_password_request.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/domain/model/reset_password/reset_password_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IResetPasswordService {
  Future<Result<ResetPasswordModel, Failure>> resetPassword(
    ResetPasswordRequest data,
  );
}
