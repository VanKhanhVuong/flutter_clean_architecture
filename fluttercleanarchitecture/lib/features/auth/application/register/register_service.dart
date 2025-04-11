import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/application/register/iregister_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/repository/iregister_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/repository/register_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/mapper/iregister_model_mapper.dart';
import 'package:multiple_result/multiple_result.dart';

final registerServiceProvider = Provider<IRegisterService>((ref) {
  final registerRepository = ref.watch(registerRepositoryProvider);
  return RegisterService(registerRepository);
});

final class RegisterService implements IRegisterService, IRegisterModelMapper {
  final IRegisterRepository _registerRepository;

  RegisterService(this._registerRepository);

  @override
  Future<Result<OnlyMessageModel, Failure>> register(
    RegisterRequest data,
  ) async {
    try {
      final response = await _registerRepository.registerUser(data);

      final model = mapToRegisterModel(response);

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
  OnlyMessageModel mapToRegisterModel(OnlyMessageResponse response) {
    return OnlyMessageModel(success: true, message: response.message);
  }
}
