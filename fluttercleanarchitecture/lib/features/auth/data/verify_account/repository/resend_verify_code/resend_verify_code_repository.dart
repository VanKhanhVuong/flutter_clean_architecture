import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/utils/parse_error_util.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/request/resend_verify_code/resend_verify_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/repository/resend_verify_code/iresend_verify_code_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/source/remote/resend_verify_code/resend_verify_code_api.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';

final resendVerifyCodeRepositoryProvider =
    Provider<IResendVerifyCodeRepository>((ref) {
      final resendVerifyCodeApi = ref.watch(resendVerifyCodeApiProvider);
      return ResendVerifyCodeRepository(resendVerifyCodeApi);
    });

final class ResendVerifyCodeRepository implements IResendVerifyCodeRepository {
  final ResendVerifyCodeApi _resendVerifyCodeApi;
  ResendVerifyCodeRepository(this._resendVerifyCodeApi);

  @override
  Future<OnlyMessageResponse> resendVerifyCode(
    ResendVerifyCodeRequest data,
  ) async {
    try {
      final response = await _resendVerifyCodeApi.resendVerifyCode(data);
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
