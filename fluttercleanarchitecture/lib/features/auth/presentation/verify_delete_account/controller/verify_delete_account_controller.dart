import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/application/verify_delete_account/verify_delete_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/dto/request/verify_delete_account/verify_delete_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/verify_delete_account/state/verify_delete_account/verify_delete_account_state.dart';

final verifyDeleteAccountControllerProvider = AutoDisposeNotifierProvider<
  VerifyDeleteAccountController,
  VerifyDeleteAccountState
>(VerifyDeleteAccountController.new);

class VerifyDeleteAccountController
    extends AutoDisposeNotifier<VerifyDeleteAccountState> {
  @override
  VerifyDeleteAccountState build() {
    return VerifyDeleteAccountState();
  }

  Future<void> verifyDeleteAccount() async {
    try {
      // update the state - isLoading = true and error = null
      state = state.copyWith(isLoading: true, errorMessage: null);

      final verifyDeleteAccountRequest = VerifyDeleteAccountRequest(
        otp: state.verifyDeleteAccountForm['otp'],
      );

      // call verify account api
      final result = await ref
          .read(verifyDeleteAccountServiceProvider)
          .verifyDeleteAccount(verifyDeleteAccountRequest);

      result.when(
        (success) {
          state = state.copyWith(
            isLoading: false,
            isSuccess: true,
            errorMessage: null,
          );
        },
        (failure) {
          state = state.copyWith(
            isLoading: false,
            isSuccess: false,
            errorMessage: failure.message,
          );
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

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(verifyDeleteAccountForm: formData);
  }
}
