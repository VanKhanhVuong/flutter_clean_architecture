import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/mapper/ionly_message_model_mapper.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/application/resend_delete_account/iresend_delete_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/dto/request/resend_delete_account/resend_delete_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/repository/resend_delete_account/iresend_delete_account_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/repository/resend_delete_account/resend_delete_account_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final resendDeleteAccountServiceProvider =
    Provider<IResendDeleteAccountService>((ref) {
      final resendDeleteAccountRepository = ref.watch(
        resendDeleteAccountRepositoryProvider,
      );
      return ResendDeleteAccountService(resendDeleteAccountRepository);
    });

final class ResendDeleteAccountService
    implements IResendDeleteAccountService, IOnlyMessageModelMapper {
  final IResendDeleteAccountRepository _resendDeleteAccountRepository;

  ResendDeleteAccountService(this._resendDeleteAccountRepository);

  @override
  Future<Result<OnlyMessageModel, Failure>> resendDeleteAccount(
    ResendDeleteAccountRequest data,
  ) async {
    try {
      final response = await _resendDeleteAccountRepository.resendDeleteAccount(
        data,
      );

      final model = mapToOnlyMessageModel(response);

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

  @override
  OnlyMessageModel mapToOnlyMessageModel(OnlyMessageResponse response) {
    return OnlyMessageModel(success: true, message: response.message);
  }
}
