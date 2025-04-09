import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/response/reset_password/reset_password_response.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/model/reset_password/reset_password_model.dart';

abstract interface class IResetPasswordModelMapper {
  ResetPasswordModel mapToResetPasswordModel(ResetPasswordResponse response);
}
