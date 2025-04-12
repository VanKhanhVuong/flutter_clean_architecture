import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/utils/parse_error_util.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/repository/iregister_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/source/remote/register_api.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';

final registerRepositoryProvider = Provider<IRegisterRepository>((ref) {
  final registerApi = ref.watch(registerApiProvider);
  return RegisterRepository(registerApi);
});

final class RegisterRepository implements IRegisterRepository {
  final RegisterApi _registerApi;
  RegisterRepository(this._registerApi);

  @override
  Future<OnlyMessageResponse> registerUser(RegisterRequest data) async {
    try {
      final response = await _registerApi.registerUser(data);
      return response;
    } on DioException catch (e) {
      final errorMessage = parseValidationError(e.response?.data['error']);

      throw Failure(message: errorMessage);
    } catch (e, s) {
      throw Failure(
        message: 'Lỗi không xác định: $e',
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: s,
      );
    }
  }
}
