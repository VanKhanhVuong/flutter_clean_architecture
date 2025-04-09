import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/dto/response/forgot_account_response.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/model/forgot_account/forgot_account_model.dart';

abstract interface class IForgotAccountModelMapper {
  ForgotAccountModel mapToForgotAccountModel(ForgotAccountResponse response);
}
