import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/isecure_storage.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/secure_storage.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/settings/application/ilogout_service.dart';
import 'package:fluttercleanarchitecture/features/settings/data/dto/request/logout_request.dart';
import 'package:fluttercleanarchitecture/features/settings/data/repository/ilogout_repository.dart';
import 'package:fluttercleanarchitecture/features/settings/data/repository/logout_repository.dart';
import 'package:fluttercleanarchitecture/features/settings/domain/mapper/ilogout_model_mapper.dart';
import 'package:multiple_result/multiple_result.dart';

final logoutServiceProvider = Provider<ILogoutService>((ref) {
  final logoutRepository = ref.watch(logoutRepositoryProvider);
  final secureStorage = ref.watch(secureStorageProvider);
  return LogoutService(logoutRepository, secureStorage);
});

final class LogoutService implements ILogoutService, ILogoutModelMapper {
  final ILogoutRepository _logoutRepository;
  final ISecureStorage _secureStorage;
  LogoutService(this._logoutRepository, this._secureStorage);

  @override
  Future<Result<OnlyMessageModel, Failure>> logout() async {
    try {
      final refreshToken = await _secureStorage.read("refresh_token");

      if (refreshToken == null) {
        return Error(Failure(message: "No refresh token found"));
      }

      final response = await _logoutRepository.logout(
        LogoutRequest(refreshToken: refreshToken),
      );
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
  OnlyMessageModel mapToLogoutModel(OnlyMessageResponse response) {
    return OnlyMessageModel(success: true, message: response.message);
  }
}
