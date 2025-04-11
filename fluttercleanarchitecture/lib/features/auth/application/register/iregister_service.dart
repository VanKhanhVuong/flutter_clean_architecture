import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/data/signup/dto/request/register_request.dart';

import 'package:multiple_result/multiple_result.dart';

abstract interface class IRegisterService {
  Future<Result<OnlyMessageModel, Failure>> register(RegisterRequest data);
}
