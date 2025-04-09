import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/response/verify_account/verify_account_response.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/model/verify_account/verify_account_model.dart';

abstract interface class IVerifyAccountModelMapper {
  VerifyAccountModel mapToVerifyAccountModel(VerifyAccountResponse response);
}
