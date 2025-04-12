import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/common/style/dimens.dart';
import 'package:fluttercleanarchitecture/common/utils/validators.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/forgot_account/controller/forgot_account_controller.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/forgot_account/ui/widgets/get_verify_code_button.dart';
import 'package:fluttercleanarchitecture/shared/styled_textfield.dart';
import 'package:go_router/go_router.dart';

class ForgotAccountFormList extends ConsumerStatefulWidget {
  const ForgotAccountFormList({super.key});

  @override
  ConsumerState<ForgotAccountFormList> createState() =>
      _ForgotAccountFormListState();
}

class _ForgotAccountFormListState extends ConsumerState<ForgotAccountFormList> {
  // form key
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
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

                const SizedBox(height: kExtraLarge),
                GetVerifyCodeButton(onPressed: _onSubmit),
                const SizedBox(height: kExtraLarge),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _listener() {
    // listen for error
    ref.listen(forgotAccountControllerProvider.select((value) => value.error), (
      _,
      next,
    ) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 5),
            backgroundColor: Colors.red,
            content: Text(next),
          ),
        );
      }
    });
    // listen for success
    ref.listen(
      forgotAccountControllerProvider.select((value) => value.isSuccess),
      (previous, next) {
        final error = ref.read(forgotAccountControllerProvider).error;
        if (next != null && next && error == "") {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: Text('Forgot Account Request Successful'.hardcoded),
                content: Text(
                  'Please check your email for verification and please verify your account'
                      .hardcoded,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      // close dialog
                      context.pop();

                      // clear controllers
                      _clearController();
                      // navigate to Verify Account screen
                      _navigateToVerifyForgotAccount();
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
  }

  void _navigateToVerifyForgotAccount() {
    // Lấy giá trị email từ controller và thêm vào query params
    context.go(
      '/forgot-password/reset-password?email=${_emailController.text}',
    );
  }

  void _onSubmit() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      // collect form data from controllers
      final formData = {'email': _emailController.text};

      // set form data
      ref.read(forgotAccountControllerProvider.notifier).setFormData(formData);
      // // sign up - call api
      ref.read(forgotAccountControllerProvider.notifier).forgotAccount();
    }
  }
}
