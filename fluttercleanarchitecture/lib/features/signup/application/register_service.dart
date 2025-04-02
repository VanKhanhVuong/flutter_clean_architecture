import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/signup/application/iregister_service.dart';
import 'package:fluttercleanarchitecture/features/signup/data/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/signup/data/dto/response/register_response.dart';
import 'package:fluttercleanarchitecture/features/signup/data/repository/iregister_repository.dart';
import 'package:fluttercleanarchitecture/features/signup/data/repository/register_repository.dart';
import 'package:fluttercleanarchitecture/features/signup/domain/mapper/iregister_model_mapper.dart';
import 'package:fluttercleanarchitecture/features/signup/domain/model/register_model.dart';
import 'package:multiple_result/multiple_result.dart';

final registerServiceProvider = Provider<IRegisterService>((ref) {
  final registerRepository = ref.watch(registerRepositoryProvider);
  return RegisterService(registerRepository);
});

final class RegisterService implements IRegisterService, IRegisterModelMapper {
  final IRegisterRepository _registerRepository;

  RegisterService(this._registerRepository);

  @override
  Future<Result<RegisterModel, Failure>> register(RegisterRequest data) async {
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
  RegisterModel mapToRegisterModel(RegisterResponse response) {
    return RegisterModel(success: true, message: response.message);
  }
}
