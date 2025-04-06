import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/request/reset_password/reset_password_request.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/response/reset_password/reset_password_response.dart';

abstract interface class IResetPasswordRepository {
  Future<ResetPasswordResponse> resetPassword(ResetPasswordRequest data);
}
