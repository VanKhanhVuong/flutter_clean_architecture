import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/request/resend_verify_code/resend_verify_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/response/resend_verify_code/resend_verify_code_response.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/repository/resend_verify_code/iresend_verify_code_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/source/remote/resend_verify_code/resend_verify_code_api.dart';

final resendVerifyCodeRepositoryProvider =
    Provider<IResendVerifyCodeRepository>((ref) {
      final resendVerifyCodeApi = ref.watch(resendVerifyCodeApiProvider);
      return ResendVerifyCodeRepository(resendVerifyCodeApi);
    });

final class ResendVerifyCodeRepository implements IResendVerifyCodeRepository {
  final ResendVerifyCodeApi _resendVerifyCodeApi;
  ResendVerifyCodeRepository(this._resendVerifyCodeApi);

  @override
  Future<ResendVerifyCodeResponse> resendVerifyCode(
    ResendVerifyCodeRequest data,
  ) {
    try {
      final response = _resendVerifyCodeApi.resendVerifyCode(data);
      return response;
    } on DioException catch (_) {
      rethrow;
    }
  }
}
