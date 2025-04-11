import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/request/reset_password/reset_password_request.dart';

abstract interface class IResetPasswordRepository {
  Future<OnlyMessageResponse> resetPassword(ResetPasswordRequest data);
}
