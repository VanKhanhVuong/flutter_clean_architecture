import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/application/reset_password/ireset_password_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/request/reset_password/reset_password_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/repository/reset_password/ireset_password_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/repository/reset_password/reset_password_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/mapper/ireset_password_model_mapper.dart';
import 'package:multiple_result/multiple_result.dart';

final resetPasswordServiceProvider = Provider<IResetPasswordService>((ref) {
  final resetPasswordRepository = ref.watch(resetPasswordRepositoryProvider);
  return ResetPasswordService(resetPasswordRepository);
});

final class ResetPasswordService
    implements IResetPasswordService, IResetPasswordModelMapper {
  final IResetPasswordRepository _resetPasswordRepository;

  ResetPasswordService(this._resetPasswordRepository);

  @override
  Future<Result<OnlyMessageModel, Failure>> resetPassword(
    ResetPasswordRequest data,
  ) async {
    try {
      final response = await _resetPasswordRepository.resetPassword(data);

      final model = mapToResetPasswordModel(response);

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
  OnlyMessageModel mapToResetPasswordModel(OnlyMessageResponse response) {
    return OnlyMessageModel(success: true, message: response.message);
  }
}
