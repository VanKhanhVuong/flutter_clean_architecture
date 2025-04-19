import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/application/delete_account/delete_account_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/delete_account/dto/request/delete_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/delete_account/state/delete_account_state.dart';

final deleteAccountControllerProvider =
    AutoDisposeNotifierProvider<DeleteAccountController, DeleteAccountState>(
      DeleteAccountController.new,
    );

class DeleteAccountController extends AutoDisposeNotifier<DeleteAccountState> {
  @override
  DeleteAccountState build() {
    return DeleteAccountState();
  }

  Future<void> deleteAccount() async {
    try {
      state = state.copyWith(
        isLoading: true,
        isSuccess: null,
        errorMessage: null,
      );

      final formData = DeleteAccountRequest(
        email: state.deleteAccountFrom['email'],
        password: state.deleteAccountFrom['password'],
        passwordConfirmation: state.deleteAccountFrom['password_confirmation'],
      );

      final result = await ref
          .read(deleteAccountServiceProvider)
          .deleteAccount(formData);
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
    state = state.copyWith(deleteAccountFrom: formData);
  }
}
