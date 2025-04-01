import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/signup/data/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/signup/data/source/remote/register_api.dart';
import 'package:fluttercleanarchitecture/features/signup/presentation/state/register_state.dart';

final signUpControllerProvider =
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

      final data = RegisterRequest(
        name: state.registerFrom['name'],
        email: state.registerFrom['email'],
        password: state.registerFrom['password'],
        passwordConfirmation: state.registerFrom['password_confirmation'],
      );

      final result = await ref.read(registerApiProvider).registerUser(data);
      state = state.copyWith(isLoading: false, isSuccess: result.success);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isSuccess: null,
        errorMessage: e.toString(),
      );
    }
  }
}
