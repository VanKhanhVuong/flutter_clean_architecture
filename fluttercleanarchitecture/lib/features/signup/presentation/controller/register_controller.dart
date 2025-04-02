import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/signup/application/register_service.dart';
import 'package:fluttercleanarchitecture/features/signup/data/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/signup/presentation/state/register_state.dart';

final registerControllerProvider =
    AutoDisposeNotifierProvider<RegisterController, RegisterState>(
      RegisterController.new,
    );

class RegisterController extends AutoDisposeNotifier<RegisterState> {
  @override
  RegisterState build() {
    return RegisterState();
  }

  Future<void> register() async {
    try {
      state = state.copyWith(
        isLoading: true,
        isSuccess: null,
        errorMessage: null,
      );

      final formData = RegisterRequest(
        name: state.registerFrom['name'],
        email: state.registerFrom['email'],
        password: state.registerFrom['password'],
        passwordConfirmation: state.registerFrom['password_confirmation'],
      );

      final result = await ref.read(registerServiceProvider).register(formData);
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
    state = state.copyWith(registerFrom: formData);
  }
}
