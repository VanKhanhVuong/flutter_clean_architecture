import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/forgot_account/application/iforgot_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/forgot_account/data/dto/request/forgot_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/forgot_account/data/dto/response/forgot_account_response.dart';
import 'package:fluttercleanarchitecture/features/auth/forgot_account/data/repository/forgot_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/forgot_account/data/repository/iforgot_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/forgot_account/domain/mapper/iforgot_account_model_mapper.dart';
import 'package:fluttercleanarchitecture/features/auth/forgot_account/domain/model/forgot_account_model.dart';
import 'package:multiple_result/multiple_result.dart';

final forgotAccountServiceProvider =
    Provider.autoDispose<IForgotAccountService>((ref) {
      final forgotAccountRepository = ref.watch(
        forgotAccountRepositoryProvider,
      );

      return ForgotAccountService(forgotAccountRepository);
    });

final class ForgotAccountService
    implements IForgotAccountService, IForgotAccountModelMapper {
  final IForgotAccountRepository _forgotAccountRepository;

  ForgotAccountService(this._forgotAccountRepository);

  @override
  Future<Result<ForgotAccountModel, Failure>> forgotAccount(
    ForgotAccountRequest data,
  ) async {
    try {
      final response = await _forgotAccountRepository.forgotAccount(data);

      final model = mapToForgotAccountModel(response);

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
  ForgotAccountModel mapToForgotAccountModel(ForgotAccountResponse response) {
    return ForgotAccountModel(success: true, message: response.message);
  }
}
