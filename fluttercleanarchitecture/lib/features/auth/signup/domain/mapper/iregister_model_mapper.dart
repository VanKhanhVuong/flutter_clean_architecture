import 'package:fluttercleanarchitecture/features/auth/signup/data/dto/response/register_response.dart';
import 'package:fluttercleanarchitecture/features/auth/signup/domain/model/register_model.dart';

abstract interface class IRegisterModelMapper {
  RegisterModel mapToRegisterModel(RegisterResponse response);
}
