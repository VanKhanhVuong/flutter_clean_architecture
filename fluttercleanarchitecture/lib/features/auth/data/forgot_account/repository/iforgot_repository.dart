import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/dto/request/forgot_account_request.dart';

abstract interface class IForgotAccountRepository {
  Future<OnlyMessageResponse> forgotAccount(ForgotAccountRequest data);
}
