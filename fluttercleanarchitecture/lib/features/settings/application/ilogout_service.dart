import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class ILogoutService {
  Future<Result<OnlyMessageModel, Failure>> logout();
}
