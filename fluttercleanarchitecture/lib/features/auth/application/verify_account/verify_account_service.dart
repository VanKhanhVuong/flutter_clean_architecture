import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/application/verify_account/iverify_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/request/verify_account/verify_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/repository/verify_account/iverify_account_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/repository/verify_account/verify_account_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/mapper/iverify_account_model_mapper.dart';
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
  OnlyMessageModel mapToVerifyAccountModel(OnlyMessageResponse response) {
    return OnlyMessageModel(
      success: response.success,
      message: response.message,
    );
  }

  @override
  Future<Result<OnlyMessageModel, Failure>> verifyAccount(
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
