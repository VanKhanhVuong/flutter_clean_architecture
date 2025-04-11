import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/application/forgot_account/iforgot_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/dto/request/forgot_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/repository/forgot_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/repository/iforgot_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/mapper/iforgot_account_model_mapper.dart';

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
  Future<Result<OnlyMessageModel, Failure>> forgotAccount(
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
  OnlyMessageModel mapToForgotAccountModel(OnlyMessageResponse response) {
    return OnlyMessageModel(success: true, message: response.message);
  }
}
