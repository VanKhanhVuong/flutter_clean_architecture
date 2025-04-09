import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/dto/request/login_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/dto/response/login_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/repository/ilogin_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/source/local/itoken_storage.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/source/local/token_storage.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/source/remote/login_api.dart';

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
