import 'package:fluttercleanarchitecture/features/signup/data/dto/response/register_response.dart';
import 'package:fluttercleanarchitecture/features/signup/domain/model/register_model.dart';

abstract class IRegisterModelMapper {
  RegisterModel fromJson(RegisterResponse data);
}
