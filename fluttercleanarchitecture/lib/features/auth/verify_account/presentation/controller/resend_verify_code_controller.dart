import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/application/resend_verify_code/resend_verify_code_service.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/data/dto/request/resend_verify_code/resend_verify_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/verify_account/presentation/state/resend_verify_code/resend_verify_code_state.dart';

final resendverifyCodeControllerProvider = AutoDisposeNotifierProvider<
  ResendVerifyCodeController,
  ResendVerifyCodeState
>(ResendVerifyCodeController.new);

class ResendVerifyCodeController
    extends AutoDisposeNotifier<ResendVerifyCodeState> {
  @override
  ResendVerifyCodeState build() {
    return ResendVerifyCodeState();
  }

  Future<void> resendVerifyCode() async {
    try {
      // update the state - isLoading = true and error = null
      state = state.copyWith(isLoading: true, errorMessage: null);

      // setup the verify account request - email and otp from the form
      final verifyCodeRequest = ResendVerifyCodeRequest(
        email: state.resendVerifyCodeForm['email'],
      );

      // call verify account api
      final result = await ref
          .read(resendVerifyCodeServiceProvider)
          .resendVerifyCode(verifyCodeRequest);
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
    state = state.copyWith(resendVerifyCodeForm: formData);
  }
}
