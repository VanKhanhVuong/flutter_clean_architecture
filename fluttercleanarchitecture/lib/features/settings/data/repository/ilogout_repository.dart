// import 'package:fluttercleanarchitecture/features/settings/data/dto/request/logout_request.dart';
import 'package:fluttercleanarchitecture/features/settings/data/dto/response/logout_response.dart';

abstract interface class ILogoutRepository {
  Future<LogoutResponse> logout();
}
