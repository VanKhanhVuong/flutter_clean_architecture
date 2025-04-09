import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/dto/request/forgot_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/dto/response/forgot_account_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/repository/iforgot_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/source/remote/forgot_account_api.dart';

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
  Future<ForgotAccountResponse> forgotAccount(ForgotAccountRequest data) {
    try {
      final response = _forgotAccountApi.forgotAccount(data);
      return response;
    } on DioException catch (_) {
      rethrow;
    }
  }
}
