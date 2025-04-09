import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/request/verify_account/verify_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/response/verify_account/verify_account_response.dart';

abstract interface class IVerifyAccountRepository {
  Future<VerifyAccountResponse> verifyAccount(VerifyAccountRequest data);
}
