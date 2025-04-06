import 'package:fluttercleanarchitecture/features/auth/reset_password/application/resend_reset_code/resend_reset_code_service.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/request/resend_reset_code/resend_reset_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/presentation/state/resend_reset_code/resend_reset_code_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final resendResetCodeControllerProvider = AutoDisposeNotifierProvider<
  ResendResetCodeController,
  ResendResetCodeState
>(ResendResetCodeController.new);

class ResendResetCodeController
    extends AutoDisposeNotifier<ResendResetCodeState> {
  @override
  ResendResetCodeState build() {
    return ResendResetCodeState();
  }

  Future<void> resendResetCode() async {
    try {
      // update the state - isLoading = true and error = null
      state = state.copyWith(isLoading: true, errorMessage: null);

      // setup the verify account request - email from the form
      final resetCodeRequest = ResendResetCodeRequest(
        email: state.resendResetCodeForm['email'],
      );

      // call verify account api
      final result = await ref
          .read(resendResetCodeServiceProvider)
          .resendResetCode(resetCodeRequest);
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
    state = state.copyWith(resendResetCodeForm: formData);
  }
}
