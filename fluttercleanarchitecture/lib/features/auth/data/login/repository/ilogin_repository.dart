import 'package:fluttercleanarchitecture/features/auth/data/login/dto/request/login_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/dto/response/login_response.dart';

abstract interface class ILoginRepository {
  Future<LoginResponse> loginUser(LoginRequest data);
}
