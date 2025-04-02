import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/signup/data/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/signup/domain/model/register_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IRegisterService {
  Future<Result<RegisterModel, Failure>> register(RegisterRequest data);
}
