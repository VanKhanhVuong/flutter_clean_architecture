import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/application/verify_account/iverify_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/request/verify_account/verify_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/response/verify_account/verify_account_response.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/repository/verify_account/iverify_account_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/repository/verify_account/verify_account_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/domain/mapper/iverify_account_model_mapper.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/domain/model/verify_account/verify_account_model.dart';
import 'package:multiple_result/multiple_result.dart';

final verifyAccountServiceProvider =
    Provider.autoDispose<IVerifyAccountService>((ref) {
      final verifyAccountRepository = ref.watch(
        verifyAccountRepositoryProvider,
      );

      return VerifyAccountService(verifyAccountRepository);
    });

final class VerifyAccountService
    implements IVerifyAccountService, IVerifyAccountModelMapper {
  final IVerifyAccountRepository _verifyAccountRepository;

  VerifyAccountService(this._verifyAccountRepository);

  @override
  VerifyAccountModel mapToVerifyAccountModel(VerifyAccountResponse response) {
    return VerifyAccountModel(
      success: response.success,
      message: response.message,
    );
  }

  @override
  Future<Result<VerifyAccountModel, Failure>> verifyAccount(
    VerifyAccountRequest data,
  ) async {
    try {
      final response = await _verifyAccountRepository.verifyAccount(data);

      final model = mapToVerifyAccountModel(response);

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
