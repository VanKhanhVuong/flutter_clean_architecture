import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/login/application/ilogin_service.dart';
import 'package:fluttercleanarchitecture/features/auth/login/data/dto/request/login_request.dart';
import 'package:fluttercleanarchitecture/features/auth/login/data/repository/ilogin_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/login/data/repository/login_repository.dart';

import 'package:multiple_result/multiple_result.dart';

final loginServiceProvider = Provider<ILoginService>((ref) {
  final loginRepository = ref.watch(loginRepositoryProvider);
  return LoginService(loginRepository);
});

final class LoginService implements ILoginService {
  final ILoginRepository _loginRepository;

  LoginService(this._loginRepository);

  @override
  Future<Result<bool, Failure>> login(LoginRequest data) async {
    try {
      await _loginRepository.loginUser(data);

      //final model = mapToLoginModel(response);

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  // @override
  // LoginModel mapToLoginModel(LoginResponse response) {
  //   return LoginModel(
  //     accessToken: response.accessToken,
  //     user: response.user,
  //     tokenType: response.tokenType,
  //   );
  // }
}
