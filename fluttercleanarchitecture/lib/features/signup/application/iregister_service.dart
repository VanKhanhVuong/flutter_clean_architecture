import 'package:fluttercleanarchitecture/features/signup/data/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/signup/domain/model/register_model.dart';

abstract interface class IRegisterService {
  Future<RegisterModel> register(RegisterRequest data);
}
