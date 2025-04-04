import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:fluttercleanarchitecture/features/settings/data/dto/request/logout_request.dart';
import 'package:fluttercleanarchitecture/features/settings/data/dto/response/logout_response.dart';
import 'package:fluttercleanarchitecture/features/settings/data/repository/ilogout_repository.dart';
import 'package:fluttercleanarchitecture/features/settings/data/source/remote/logout_api.dart';

final logoutRepositoryProvider = Provider<ILogoutRepository>((ref) {
  final logoutApi = ref.watch(logoutApiProvider);
  return LogoutRepository(logoutApi);
});

final class LogoutRepository implements ILogoutRepository {
  final LogoutApi _logoutApi;
  LogoutRepository(this._logoutApi);

  @override
  Future<LogoutResponse> logout() {
    try {
      final response = _logoutApi.logout();
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
