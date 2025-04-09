import 'package:fluttercleanarchitecture/features/auth/data/signup/dto/response/register_response.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/model/register/register_model.dart';

abstract interface class IRegisterModelMapper {
  RegisterModel mapToRegisterModel(RegisterResponse response);
}
