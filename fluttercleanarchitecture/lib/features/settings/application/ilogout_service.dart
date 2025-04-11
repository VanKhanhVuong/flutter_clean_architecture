import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/settings/domain/model/logout_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class ILogoutService {
  Future<Result<LogoutModel, Failure>> logout();
}
