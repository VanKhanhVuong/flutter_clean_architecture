import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/utils/validators.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/verify_account/controller/resend_verify_code_controller.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/verify_account/controller/verify_account_controller.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/verify_account/ui/widgets/resend_verify_code_button.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/verify_account/ui/widgets/submit_verify_button.dart';
import 'package:fluttercleanarchitecture/shared/styled_textfield.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/common/style/dimens.dart';
import 'package:go_router/go_router.dart';

class VerifyAccountFormList extends ConsumerStatefulWidget {
  final String email;
  const VerifyAccountFormList({required this.email, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpFormListState();
}

class _SignUpFormListState extends ConsumerState<VerifyAccountFormList> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // controllers
  late TextEditingController _otpController;

  @override
  void initState() {
    super.initState();
    // controllers
    _otpController = TextEditingController();
  }

  @override
  void dispose() {
    // dispose controllers
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listenerResendCode();
    _listenerVerifyAccount();

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
                  controller: _otpController,
                  keyboardType: TextInputType.number,
                  validator: Validators.validateCode,
                  label: 'Verify Code'.hardcoded,
                ),
                const SizedBox(height: kExtraLarge),
                Column(
                  children: [
                    SubmitVerifyButton(onPressed: _onSubmit),
                    const SizedBox(height: kMedium),
                    ResendOTPButton(onResend: _onResend),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _listenerResendCode() {
    ref.listen(
      resendverifyCodeControllerProvider.select((value) => value.errorMessage),
      (_, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(backgroundColor: Colors.red, content: Text(next)),
          );
        }
      },
    );

    ref.listen(
      resendverifyCodeControllerProvider.select((value) => value.isSuccess),
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

  void _listenerVerifyAccount() {
    //   // listen for error
    ref.listen(
      verifyAccountControllerProvider.select((value) => value.errorMessage),
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
      verifyAccountControllerProvider.select((value) => value.isSuccess),
      (_, next) {
        if (next != null && next) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: Text('Verify Account Successful'.hardcoded),
                content: Text(
                  'Your account has been verified successfully.'.hardcoded,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      // close dialog
                      context.pop();
                      // clear controllers
                      _clearController();
                      // navigate to Login screen
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

  void _clearController() {
    _otpController.clear();
  }

  void _navigateToLogin() {
    context.go('/login');
  }

  void _onResend() {
    // collect form data from controllers
    final formData = {'email': widget.email};

    // set form data
    ref.read(resendverifyCodeControllerProvider.notifier).setFormData(formData);
    // resend code - call api
    ref.read(resendverifyCodeControllerProvider.notifier).resendVerifyCode();
  }

  void _onSubmit() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      // collect form data from controllers
      final formData = {'email': widget.email, 'otp': _otpController.text};

      // set form data
      ref.read(verifyAccountControllerProvider.notifier).setFormData(formData);
      // sign up - call api
      ref.read(verifyAccountControllerProvider.notifier).verifyAccount();
    }
  }
}
