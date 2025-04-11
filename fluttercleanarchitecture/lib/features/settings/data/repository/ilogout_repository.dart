import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/settings/data/dto/request/logout_request.dart';

abstract interface class ILogoutRepository {
  Future<OnlyMessageResponse> logout(LogoutRequest data);
}
