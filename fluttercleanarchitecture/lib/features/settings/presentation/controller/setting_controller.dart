import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/provider/auth_state_provider.dart';
import 'package:fluttercleanarchitecture/features/settings/application/logout_service.dart';
import 'package:fluttercleanarchitecture/features/settings/application/setting_service.dart';
import 'package:fluttercleanarchitecture/features/settings/presentation/state/setting_state.dart';

final settingControllerProvider =
    NotifierProvider<SettingController, SettingState>(SettingController.new);

class SettingController extends Notifier<SettingState> {
  @override
  SettingState build() {
    return SettingState();
  }

  Future<void> logout() async {
    try {
      state = state.copyWith(
        isLoading: true,
        isSuccess: null,
        errorMessage: null,
      );

      final result = await ref.read(logoutServiceProvider).logout();
      result.when(
        (success) {
          _onLogoutSuccess();
        },
        (failure) {
          _onLogoutFailure(failure);
        },
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isSuccess: null,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> clearToken() async {
    // clear token - access token and refresh token
    await ref.read(settingServiceProvider).clearToken();
    // set auth state - false
    ref.read(authStateProvider.notifier).setAuthState(false);
  }

  void _onLogoutSuccess() {
    state = state.copyWith(isLoading: false, isSuccess: true);
    clearToken();
  }

  void _onLogoutFailure(Failure failure) {
    state = state.copyWith(
      isLoading: false,
      isSuccess: false,
      errorMessage: failure.message,
    );
  }
}
