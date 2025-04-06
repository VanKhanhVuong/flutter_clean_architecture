import 'package:fluttercleanarchitecture/features/auth/reset_password/application/reset_password/reset_password_service.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/request/reset_password/reset_password_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/presentation/state/reset_password/reset_password_state.dart';

final resetPasswordControllerProvider =
    AutoDisposeNotifierProvider<ResetPasswordController, ResetPasswordState>(
      ResetPasswordController.new,
    );

class ResetPasswordController extends AutoDisposeNotifier<ResetPasswordState> {
  @override
  ResetPasswordState build() {
    return ResetPasswordState();
  }

  Future<void> resetPassword() async {
    try {
      state = state.copyWith(
        isLoading: true,
        isSuccess: null,
        errorMessage: null,
      );

      final formData = ResetPasswordRequest(
        email: state.resetPasswordFrom['email'],
        token: state.resetPasswordFrom['token'],
        password: state.resetPasswordFrom['password'],
        passwordConfirmation: state.resetPasswordFrom['password_confirmation'],
      );

      final result = await ref
          .read(resetPasswordServiceProvider)
          .resetPassword(formData);

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
    state = state.copyWith(resetPasswordFrom: formData);
  }
}
