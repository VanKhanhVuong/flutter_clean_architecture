import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/request/verify_account/verify_account_request.dart';

abstract interface class IVerifyAccountRepository {
  Future<OnlyMessageResponse> verifyAccount(VerifyAccountRequest data);
}
