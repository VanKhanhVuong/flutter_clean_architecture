import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/common/style/dimens.dart';
import 'package:fluttercleanarchitecture/core/utils/validators.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/reset_password/controller/resend_reset_code_controller.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/reset_password/controller/reset_password_controller.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/reset_password/ui/widgets/reset_password_button.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/verify_account/ui/widgets/resend_verify_code_button.dart';
import 'package:fluttercleanarchitecture/shared/styled_textfield.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordFormList extends ConsumerStatefulWidget {
  final String email;
  const ResetPasswordFormList({super.key, required this.email});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ResetPasswordFormListState();
}

class _ResetPasswordFormListState extends ConsumerState<ResetPasswordFormList> {
  late final String tempEmail;

  // form key
  final _formKey = GlobalKey<FormState>();

  // controllers
  late TextEditingController _tokenController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    // controllers
    _tokenController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    // dispose controllers
    _tokenController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listenerResetPassword();
    _listenerResendCode();

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
                  controller: _tokenController,
                  keyboardType: TextInputType.name,
                  validator: Validators.validateCode,
                  label: 'OTP'.hardcoded,
                ),
                const SizedBox(height: kMedium),
                StyledTextField(
                  controller: _passwordController,
                  label: 'Password'.hardcoded,
                  obscureText: true,
                  validator: Validators.validatePassword,
                ),
                const SizedBox(height: kMedium),
                StyledTextField(
                  controller: _confirmPasswordController,
                  label: 'Confirm Password'.hardcoded,
                  obscureText: true,
                  validator: (value) {
                    return Validators.validateRePassword(
                      value,
                      _passwordController.text,
                    );
                  },
                ),
                const SizedBox(height: kExtraLarge),
                ResetPasswordButton(onPressed: _onSubmit),
                const SizedBox(height: kMedium),
                ResendOTPButton(onResend: _onResend),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _listenerResetPassword() {
    // listen for error
    ref.listen(
      resetPasswordControllerProvider.select((value) => value.errorMessage),
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
      resetPasswordControllerProvider.select((value) => value.isSuccess),
      (_, next) {
        if (next != null && next) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: Text('Reset Password Successful'.hardcoded),
                content: Text(
                  'Please Sign In your account. Have a nice day!'.hardcoded,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      // close dialog
                      context.pop();
                      // clear controllers
                      _clearController();
                      // navigate to Verify Account screen
                      _navigateToLogin();
                    },
                    child: Text('OK'.hardcoded),
                  ),
                ],
              );
            },
          );
        }
      },
    );
  }

  void _listenerResendCode() {
    ref.listen(
      resendResetCodeControllerProvider.select((value) => value.errorMessage),
      (_, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(backgroundColor: Colors.red, content: Text(next)),
          );
        }
      },
    );

    ref.listen(
      resendResetCodeControllerProvider.select((value) => value.isSuccess),
      (_, next) {
        if (next != null && next) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                'Verification code sent again successfully.'.hardcoded,
              ),
            ),
          );
        }
      },
    );
  }

  void _clearController() {
    _tokenController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();
  }

  void _navigateToLogin() {
    context.go('/login');
  }

  void _onResend() {
    // collect form data from controllers
    final formData = {'email': widget.email};

    // set form data
    ref.read(resendResetCodeControllerProvider.notifier).setFormData(formData);
    // resend code - call api
    ref.read(resendResetCodeControllerProvider.notifier).resendResetCode();
  }

  void _onSubmit() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      // collect form data from controllers
      final formData = {
        'token': _tokenController.text,
        'email': widget.email,
        'password': _passwordController.text,
        'password_confirmation': _confirmPasswordController.text,
      };

      // set form data
      ref.read(resetPasswordControllerProvider.notifier).setFormData(formData);
      // sign up - call api
      ref.read(resetPasswordControllerProvider.notifier).resetPassword();
    }
  }
}
