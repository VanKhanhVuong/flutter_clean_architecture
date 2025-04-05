import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/response/verify_account/verify_account_response.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/domain/model/verify_account/verify_account_model.dart';

abstract interface class IVerifyAccountModelMapper {
  VerifyAccountModel mapToVerifyAccountModel(VerifyAccountResponse response);
}
