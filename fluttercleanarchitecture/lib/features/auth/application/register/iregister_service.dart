import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/model/register/register_model.dart';

import 'package:multiple_result/multiple_result.dart';

abstract interface class IRegisterService {
  Future<Result<RegisterModel, Failure>> register(RegisterRequest data);
}
