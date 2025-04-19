import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/common/style/dimens.dart';
import 'package:fluttercleanarchitecture/common/utils/validators.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/delete_account/controller/delete_account_controller.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/delete_account/ui/widgets/delete_account_button.dart';
import 'package:fluttercleanarchitecture/shared/styled_textfield.dart';
import 'package:go_router/go_router.dart';

class DeleteAccountFormList extends ConsumerStatefulWidget {
  const DeleteAccountFormList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DeleteAccountFormListState();
}

class _DeleteAccountFormListState extends ConsumerState<DeleteAccountFormList> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // controllers
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  // late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    // controllers
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    // _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    // dispose controllers
    _emailController.dispose();
    _passwordController.dispose();
    // _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(kMedium),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StyledTextField(
                  controller: _emailController,
                  label: 'Email'.hardcoded,
                  keyboardType: TextInputType.emailAddress,
                  validator: Validators.validateEmail,
                ),
                const SizedBox(height: kMedium),
                StyledTextField(
                  controller: _passwordController,
                  label: 'Password'.hardcoded,
                  obscureText: true,
                  validator: Validators.validatePassword,
                ),
                // const SizedBox(height: kMedium),
                // StyledTextField(
                //   controller: _confirmPasswordController,
                //   label: 'Confirm Password'.hardcoded,
                //   obscureText: true,
                //   validator: (value) {
                //     return Validators.validateRePassword(
                //       value,
                //       _passwordController.text,
                //     );
                //   },
                // ),
                const SizedBox(height: kExtraLarge),
                DeleteAccountButton(onPressed: _onSubmit),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _listener() {
    // listen for error
    ref.listen(
      deleteAccountControllerProvider.select((value) => value.errorMessage),
      (_, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 5),
              backgroundColor: Colors.red,
              content: Text(next),
            ),
          );
        }
      },
    );
    // listen for success
    ref.listen(
      deleteAccountControllerProvider.select((value) => value.isSuccess),
      (_, next) {
        if (next != null && next) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: Text('Request Delete Account Successful'.hardcoded),
                content: Text(
                  'Please check your email for verification and please verify your account'
                      .hardcoded,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      // close dialog
                      context.pop();

                      // navigate to Verify Delete Account screen
                      _navigateToVerifyDeleteAccount();

                      // Clear controller
                      _clearController();
                    },
                    child: Text('Ok'.hardcoded),
                  ),
                ],
              );
            },
          );
        }
      },
    );
  }

  void _clearController() {
    _emailController.clear();
    _passwordController.clear();
    // _confirmPasswordController.clear();
  }

  void _navigateToVerifyDeleteAccount() {
    // Lấy giá trị email từ controller và thêm vào query params
    context.go(
      '/home/setting/delete-account/verify-delete-account?email=${_emailController.text}',
    );
  }

  void _onSubmit() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      // collect form data from controllers
      final formData = {
        'email': _emailController.text,
        'password': _passwordController.text,
        'password_confirmation': _passwordController.text,
      };

      // set form data
      ref.read(deleteAccountControllerProvider.notifier).setFormData(formData);
      // sign up - call api
      ref.read(deleteAccountControllerProvider.notifier).deleteAccount();
    }
  }
}
