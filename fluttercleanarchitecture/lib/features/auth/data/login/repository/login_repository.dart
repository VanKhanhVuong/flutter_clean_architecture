import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/utils/parse_error_util.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/dto/request/login_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/dto/response/login_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/repository/ilogin_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/source/local/itoken_storage.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/source/local/token_storage.dart';
import 'package:fluttercleanarchitecture/features/auth/data/login/source/remote/login_api.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';

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
      final refreshToken = response.refreshToken;
      final userId = response.user.id.toString();

      await _tokenStorage.storeToken(accessToken, refreshToken, userId);

      return response;
    } on DioException catch (e) {
      final errorMessage = parseValidationError(e.response?.data['error']);
      throw Failure(message: errorMessage);
    } catch (e, s) {
      throw Failure(
        message: 'Unexpected error: $e',
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: s,
      );
    }
  }
}
