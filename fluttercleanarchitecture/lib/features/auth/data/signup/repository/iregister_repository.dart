import 'package:fluttercleanarchitecture/features/auth/data/signup/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/dto/response/register_response.dart';

abstract interface class IRegisterRepository {
  Future<RegisterResponse> registerUser(RegisterRequest data);
}
