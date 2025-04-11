import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/application/resend_verify_code/iresend_verify_code_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/request/resend_verify_code/resend_verify_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/repository/resend_verify_code/iresend_verify_code_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/repository/resend_verify_code/resend_verify_code_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/mapper/iresend_verify_code_model_mapper.dart';
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
  OnlyMessageModel mapToResendVerifyCodeModel(OnlyMessageResponse response) {
    return OnlyMessageModel(
      success: response.success,
      message: response.message,
    );
  }

  @override
  Future<Result<OnlyMessageModel, Failure>> resendVerifyCode(
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
