import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/utils/parse_error_util.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/dto/request/forgot_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/repository/iforgot_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/source/remote/forgot_account_api.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';

final forgotAccountRepositoryProvider = Provider<IForgotAccountRepository>((
  ref,
) {
  final forgotAccountApi = ref.watch(forgotAccountApiProvider);
  return ForgotAccountRepository(forgotAccountApi);
});

final class ForgotAccountRepository implements IForgotAccountRepository {
  final ForgotAccountApi _forgotAccountApi;
  ForgotAccountRepository(this._forgotAccountApi);

  @override
  Future<OnlyMessageResponse> forgotAccount(ForgotAccountRequest data) async {
    try {
      final response = await _forgotAccountApi.forgotAccount(data);
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
