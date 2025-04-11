import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/repository/iregister_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/source/remote/register_api.dart';

final registerRepositoryProvider = Provider<IRegisterRepository>((ref) {
  final registerApi = ref.watch(registerApiProvider);
  return RegisterRepository(registerApi);
});

final class RegisterRepository implements IRegisterRepository {
  final RegisterApi _registerApi;
  RegisterRepository(this._registerApi);

  @override
  Future<OnlyMessageResponse> registerUser(RegisterRequest data) {
    try {
      final response = _registerApi.registerUser(data);
      return response;
    } on DioException catch (_) {
      rethrow;
    }
  }
}
