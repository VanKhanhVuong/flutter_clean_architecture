import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/login/data/dto/request/login_request.dart';
import 'package:fluttercleanarchitecture/features/auth/login/data/dto/response/login_response.dart';
import 'package:fluttercleanarchitecture/features/auth/login/data/repository/ilogin_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/login/data/source/local/itoken_storage.dart';
import 'package:fluttercleanarchitecture/features/auth/login/data/source/local/token_storage.dart';
import 'package:fluttercleanarchitecture/features/auth/login/data/source/remote/login_api.dart';

final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  final loginApi = ref.watch(loginApiProvider);
  final tokenStorage = ref.watch(tokenStorageProvider);
  return LoginRepository(loginApi, tokenStorage);
});

final class LoginRepository implements ILoginRepository {
  final LoginApi _loginApi;
  final ITokenStorage _tokenStorage;
  LoginRepository(this._loginApi, this._tokenStorage);

  @override
  Future<LoginResponse> loginUser(LoginRequest data) async {
    try {
      final response = await _loginApi.loginUser(data);

      final accessToken = response.accessToken;
      final email = response.user.email;

      await _tokenStorage.storeToken(accessToken, email);

      return response;
    } on DioException catch (_) {
      rethrow;
    }
  }
}
