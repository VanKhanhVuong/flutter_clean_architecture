import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/request/reset_password/reset_password_request.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/response/reset_password/reset_password_response.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/repository/reset_password/ireset_password_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/source/remote/reset_password/reset_password_api.dart';

final resetPasswordRepositoryProvider = Provider<IResetPasswordRepository>((
  ref,
) {
  final resetPasswordApi = ref.watch(resetPasswordApiProvider);
  return ResetPasswordRepository(resetPasswordApi);
});

final class ResetPasswordRepository implements IResetPasswordRepository {
  final ResetPasswordApi _resetPasswordApi;
  ResetPasswordRepository(this._resetPasswordApi);

  @override
  Future<ResetPasswordResponse> resetPassword(ResetPasswordRequest data) {
    try {
      final response = _resetPasswordApi.resetPassword(data);
      return response;
    } on DioException catch (_) {
      rethrow;
    }
  }
}
