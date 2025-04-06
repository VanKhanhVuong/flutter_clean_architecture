import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/response/reset_password/reset_password_response.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/domain/model/reset_password/reset_password_model.dart';

abstract interface class IResetPasswordModelMapper {
  ResetPasswordModel mapToResetPasswordModel(ResetPasswordResponse response);
}
