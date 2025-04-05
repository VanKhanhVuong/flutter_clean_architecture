import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/request/verify_account/verify_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/domain/model/verify_account/verify_account_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IVerifyAccountService {
  Future<Result<VerifyAccountModel, Failure>> verifyAccount(
    VerifyAccountRequest data,
  );
}
