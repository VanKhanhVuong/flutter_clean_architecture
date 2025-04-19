import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/mapper/ionly_message_model_mapper.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/application/delete_account/idelete_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/delete_account/dto/request/delete_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/delete_account/repository/delete_account_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/delete_account/repository/idelete_account_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final deleteAccountServiceProvider = Provider<IDeleteAccountService>((ref) {
  final deleteAccountRepository = ref.watch(deleteAccountRepositoryProvider);
  return DeleteAccountService(deleteAccountRepository);
});

final class DeleteAccountService
    implements IDeleteAccountService, IOnlyMessageModelMapper {
  final IDeleteAccountRepository _deleteAccountRepository;

  DeleteAccountService(this._deleteAccountRepository);

  @override
  Future<Result<OnlyMessageModel, Failure>> deleteAccount(
    DeleteAccountRequest data,
  ) async {
    try {
      final response = await _deleteAccountRepository.deleteAccount(data);

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
