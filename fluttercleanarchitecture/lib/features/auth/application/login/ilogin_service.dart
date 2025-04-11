import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/dto/request/login_request.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class ILoginService {
  Future<Result<bool, Failure>> login(LoginRequest data);
}
