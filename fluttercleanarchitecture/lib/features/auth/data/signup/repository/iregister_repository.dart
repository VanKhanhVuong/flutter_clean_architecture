import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/dto/request/register_request.dart';

abstract interface class IRegisterRepository {
  Future<OnlyMessageResponse> registerUser(RegisterRequest data);
}
