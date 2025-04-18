import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/application/forgot_account/forgot_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/forgot_account/dto/request/forgot_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/forgot_account/state/forgot_account_state.dart';

final forgotAccountControllerProvider =
    AutoDisposeNotifierProvider<ForgotAccountController, ForgotAccountState>(
      ForgotAccountController.new,
    );

class ForgotAccountController extends AutoDisposeNotifier<ForgotAccountState> {
  @override
  ForgotAccountState build() {
    return ForgotAccountState();
  }

  Future<void> forgotAccount() async {
    try {
      state = state.copyWith(isLoading: true, isSuccess: null, error: null);

      final forgotData = ForgotAccountRequest(
        email: state.forgotAccountForm['email'],
      );

      final result = await ref
          .read(forgotAccountServiceProvider)
          .forgotAccount(forgotData);

      result.when(
        (success) {
          state = state.copyWith(
            isLoading: false,
            isSuccess: true,
            error: null,
          );
        },
        (failure) {
          state = state.copyWith(
            isLoading: false,
            isSuccess: false,
            error: failure.message,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isSuccess: null,
        error: e.toString(),
      );
    }
  }

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(forgotAccountForm: formData);
  }
}
