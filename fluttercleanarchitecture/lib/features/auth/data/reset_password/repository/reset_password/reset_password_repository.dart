import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/utils/parse_error_util.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/request/reset_password/reset_password_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/repository/reset_password/ireset_password_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/source/remote/reset_password/reset_password_api.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';

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
  Future<OnlyMessageResponse> resetPassword(ResetPasswordRequest data) async {
    try {
      final response = await _resetPasswordApi.resetPassword(data);
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
