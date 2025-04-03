import 'package:fluttercleanarchitecture/features/settings/data/dto/response/logout_response.dart';
import 'package:fluttercleanarchitecture/features/settings/domain/model/logout_model.dart';

abstract interface class ILogoutModelMapper {
  LogoutModel mapToLogoutModel(LogoutResponse response);
}
