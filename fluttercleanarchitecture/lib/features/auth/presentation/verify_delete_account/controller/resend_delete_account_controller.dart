import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/application/resend_delete_account/resend_delete_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/dto/request/resend_delete_account/resend_delete_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/verify_delete_account/state/resend_delete_account/resend_delete_account_state.dart';

final resendDeleteAccountControllerProvider = AutoDisposeNotifierProvider<
  ResendDeleteAccountController,
  ResendDeleteAccountState
>(ResendDeleteAccountController.new);

class ResendDeleteAccountController
    extends AutoDisposeNotifier<ResendDeleteAccountState> {
  @override
  ResendDeleteAccountState build() {
    return ResendDeleteAccountState();
  }

  Future<void> resendDeleteAccount() async {
    try {
      // update the state - isLoading = true and error = null
      state = state.copyWith(isLoading: true, errorMessage: null);

      // setup the verify delete account request - email and otp from the form
      final resendDeleteAccountForm = ResendDeleteAccountRequest(
        email: state.resendDeleteAccountForm['email'],
      );

      // call verify account api
      final result = await ref
          .read(resendDeleteAccountServiceProvider)
          .resendDeleteAccount(resendDeleteAccountForm);

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
    state = state.copyWith(resendDeleteAccountForm: formData);
  }
}
