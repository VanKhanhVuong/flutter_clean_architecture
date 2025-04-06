import 'package:fluttercleanarchitecture/features/auth/forgot_account/data/dto/request/forgot_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/forgot_account/data/dto/response/forgot_account_response.dart';

abstract interface class IForgotAccountRepository {
  Future<ForgotAccountResponse> forgotAccount(ForgotAccountRequest data);
}
