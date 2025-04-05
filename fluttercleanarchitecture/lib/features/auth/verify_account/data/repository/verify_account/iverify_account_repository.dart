import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/request/verify_account/verify_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/response/verify_account/verify_account_response.dart';

abstract interface class IVerifyAccountRepository {
  Future<VerifyAccountResponse> verifyAccount(VerifyAccountRequest data);
}
