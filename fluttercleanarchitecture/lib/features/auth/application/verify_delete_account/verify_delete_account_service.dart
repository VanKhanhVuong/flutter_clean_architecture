import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/mapper/ionly_message_model_mapper.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/application/verify_delete_account/iverify_delete_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/dto/request/verify_delete_account/verify_delete_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/repository/verify_delete_account/iverify_delete_account_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/repository/verify_delete_account/verify_delete_account_repository.dart';

import 'package:multiple_result/multiple_result.dart';

final verifyDeleteAccountServiceProvider =
    Provider<IVerifyDeleteAccountService>((ref) {
      final verifyDeleteAccountRepository = ref.watch(
        verifyDeleteAccountRepositoryProvider,
      );
      return VerifyDeleteAccountService(verifyDeleteAccountRepository);
    });

final class VerifyDeleteAccountService
    implements IVerifyDeleteAccountService, IOnlyMessageModelMapper {
  final IVerifyDeleteAccountRepository _verifyDeleteAccountRepository;

  VerifyDeleteAccountService(this._verifyDeleteAccountRepository);

  @override
  Future<Result<OnlyMessageModel, Failure>> verifyDeleteAccount(
    VerifyDeleteAccountRequest data,
  ) async {
    try {
      final response = await _verifyDeleteAccountRepository.verifyDeleteAccount(
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
