import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/utils/parse_error_util.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/request/resend_reset_code/resend_reset_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/repository/resend_reset_code/iresend_reset_code_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/source/remote/resend_reset_code/resend_reset_code_api.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';

final resendResetCodeRepositoryProvider = Provider<IResendResetCodeRepository>((
  ref,
) {
  final resendResetCodeApi = ref.watch(resendResetCodeApiProvider);
  return ResendResetCodeRepository(resendResetCodeApi);
});

final class ResendResetCodeRepository implements IResendResetCodeRepository {
  final ResendResetCodeApi _resendResetCodeApi;
  ResendResetCodeRepository(this._resendResetCodeApi);

  @override
  Future<OnlyMessageResponse> resendResetCode(
    ResendResetCodeRequest data,
  ) async {
    try {
      final response = await _resendResetCodeApi.resendResetCode(data);
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
