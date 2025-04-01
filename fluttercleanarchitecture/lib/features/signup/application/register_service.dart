import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/signup/application/iregister_service.dart';
import 'package:fluttercleanarchitecture/features/signup/data/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/signup/data/dto/response/register_response.dart';
import 'package:fluttercleanarchitecture/features/signup/data/repository/iregister_repository.dart';
import 'package:fluttercleanarchitecture/features/signup/data/repository/register_repository.dart';
import 'package:fluttercleanarchitecture/features/signup/domain/mapper/iregister_model_mapper.dart';
import 'package:fluttercleanarchitecture/features/signup/domain/model/register_model.dart';

final registerServiceProvider = Provider<IRegisterService>((ref) {
  final registerRepository = ref.watch(registerRepositoryProvider);
  return RegisterService(registerRepository);
});

final class RegisterService implements IRegisterService, IRegisterModelMapper {
  final IRegisterRepository _registerRepository;

  RegisterService(this._registerRepository);

  @override
  Future<RegisterModel> register(RegisterRequest data) async {
    try {
      final response = await _registerRepository.registerUser(data);
      final model = mapToRegisterModel(response);
      return model;
    } catch (e) {
      rethrow;
    }
  }

  @override
  RegisterModel mapToRegisterModel(RegisterResponse response) {
    return RegisterModel(success: true, message: response.message);
  }
}
