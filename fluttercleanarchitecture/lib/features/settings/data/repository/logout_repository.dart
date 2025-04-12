import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
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
  Future<OnlyMessageResponse> logout(data) async {
    try {
      final response = await _logoutApi.logout(data);
      return response;
    } on DioException catch (e) {
      final errorMessage = e.response?.data['error'] ?? 'Unknown error';
      throw Failure(message: errorMessage);
    } catch (e, s) {
      throw Failure(
        message: 'Unexpected error: $e',
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: s,
      );
    }
  }
}
