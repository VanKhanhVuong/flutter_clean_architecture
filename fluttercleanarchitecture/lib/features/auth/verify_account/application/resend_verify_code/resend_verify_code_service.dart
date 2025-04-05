import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/application/resend_verify_code/iresend_verify_code_service.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/request/resend_verify_code/resend_verify_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/response/resend_verify_code/resend_verify_code_response.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/repository/resend_verify_code/iresend_verify_code_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/repository/resend_verify_code/resend_verify_code_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/domain/mapper/iresend_verify_code_model_mapper.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/domain/model/resend_verify_code/resend_verify_code_model.dart';
import 'package:multiple_result/multiple_result.dart';

final resendVerifyCodeServiceProvider =
    Provider.autoDispose<IResendVerifyCodeService>((ref) {
      final resendVerifyCodeRepository = ref.watch(
        resendVerifyCodeRepositoryProvider,
      );

      return ResendVerifyCodeService(resendVerifyCodeRepository);
    });

final class ResendVerifyCodeService
    implements IResendVerifyCodeService, IResendVerifyCodeModelMapper {
  final IResendVerifyCodeRepository _resendVerifyCodeRepository;

  ResendVerifyCodeService(this._resendVerifyCodeRepository);

  @override
  ResendVerifyCodeModel mapToResendVerifyCodeModel(
    ResendVerifyCodeResponse response,
  ) {
    return ResendVerifyCodeModel(
      success: response.success,
      message: response.message,
    );
  }

  @override
  Future<Result<ResendVerifyCodeModel, Failure>> resendVerifyCode(
    ResendVerifyCodeRequest data,
  ) async {
    try {
      final response = await _resendVerifyCodeRepository.resendVerifyCode(data);

      final model = mapToResendVerifyCodeModel(response);

      return Success(model);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }
}
