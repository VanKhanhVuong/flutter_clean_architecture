import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/request/reset_password/reset_password_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/response/reset_password/reset_password_response.dart';

abstract interface class IResetPasswordRepository {
  Future<ResetPasswordResponse> resetPassword(ResetPasswordRequest data);
}
