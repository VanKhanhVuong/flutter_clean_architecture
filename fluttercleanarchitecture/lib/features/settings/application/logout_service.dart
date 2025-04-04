import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/settings/application/ilogout_service.dart';
// import 'package:fluttercleanarchitecture/features/settings/data/dto/request/logout_request.dart';
import 'package:fluttercleanarchitecture/features/settings/data/dto/response/logout_response.dart';
import 'package:fluttercleanarchitecture/features/settings/data/repository/ilogout_repository.dart';
import 'package:fluttercleanarchitecture/features/settings/data/repository/logout_repository.dart';
import 'package:fluttercleanarchitecture/features/settings/domain/mapper/ilogout_model_mapper.dart';
import 'package:fluttercleanarchitecture/features/settings/domain/model/logout_model.dart';
import 'package:multiple_result/multiple_result.dart';

final logoutServiceProvider = Provider<ILogoutService>((ref) {
  final logoutRepository = ref.watch(logoutRepositoryProvider);
  return LogoutService(logoutRepository);
});

final class LogoutService implements ILogoutService, ILogoutModelMapper {
  final ILogoutRepository _logoutRepository;

  LogoutService(this._logoutRepository);

  @override
  Future<Result<LogoutModel, Failure>> logout() async {
    try {
      final response = await _logoutRepository.logout();

      final model = mapToLogoutModel(response);

      return Success(model);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  LogoutModel mapToLogoutModel(LogoutResponse response) {
    return LogoutModel(success: true, message: response.message);
  }
}
