import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/forgot_account/data/dto/request/forgot_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/forgot_account/domain/model/forgot_account_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IForgotAccountService {
  Future<Result<ForgotAccountModel, Failure>> forgotAccount(
    ForgotAccountRequest data,
  );
}
