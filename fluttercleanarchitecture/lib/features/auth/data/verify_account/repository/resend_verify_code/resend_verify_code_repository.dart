import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/request/resend_verify_code/resend_verify_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/repository/resend_verify_code/iresend_verify_code_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/source/remote/resend_verify_code/resend_verify_code_api.dart';

final resendVerifyCodeRepositoryProvider =
    Provider<IResendVerifyCodeRepository>((ref) {
      final resendVerifyCodeApi = ref.watch(resendVerifyCodeApiProvider);
      return ResendVerifyCodeRepository(resendVerifyCodeApi);
    });

final class ResendVerifyCodeRepository implements IResendVerifyCodeRepository {
  final ResendVerifyCodeApi _resendVerifyCodeApi;
  ResendVerifyCodeRepository(this._resendVerifyCodeApi);

  @override
  Future<OnlyMessageResponse> resendVerifyCode(ResendVerifyCodeRequest data) {
    try {
      final response = _resendVerifyCodeApi.resendVerifyCode(data);
      return response;
    } on DioException catch (_) {
      rethrow;
    }
  }
}
