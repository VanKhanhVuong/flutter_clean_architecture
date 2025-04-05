import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/application/verify_account/verify_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/request/verify_account/verify_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/presentation/state/verify_account/verify_account_state.dart';

final verifyAccountControllerProvider =
    AutoDisposeNotifierProvider<VerifyAccountController, VerifyAccountState>(
      VerifyAccountController.new,
    );

class VerifyAccountController extends AutoDisposeNotifier<VerifyAccountState> {
  @override
  VerifyAccountState build() {
    return VerifyAccountState();
  }

  Future<void> verifyAccount() async {
    try {
      // update the state - isLoading = true and error = null
      state = state.copyWith(isLoading: true, errorMessage: null);

      // setup the verify account request - email and otp from the form
      final verifyAccountRequest = VerifyAccountRequest(
        email: state.verifyAccountForm['email'],
        otp: state.verifyAccountForm['otp'],
      );

      // call verify account api
      final result = await ref
          .read(verifyAccountServiceProvider)
          .verifyAccount(verifyAccountRequest);
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
    state = state.copyWith(verifyAccountForm: formData);
  }
}
