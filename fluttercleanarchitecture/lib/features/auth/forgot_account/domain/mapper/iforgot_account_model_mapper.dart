import 'package:fluttercleanarchitecture/features/auth/forgot_account/data/dto/response/forgot_account_response.dart';
import 'package:fluttercleanarchitecture/features/auth/forgot_account/domain/model/forgot_account_model.dart';

abstract interface class IForgotAccountModelMapper {
  ForgotAccountModel mapToForgotAccountModel(ForgotAccountResponse response);
}
