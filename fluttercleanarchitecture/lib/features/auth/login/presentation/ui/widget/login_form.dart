import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/common/style/dimens.dart';
import 'package:fluttercleanarchitecture/core/utils/validators.dart';
import 'package:fluttercleanarchitecture/features/auth/login/presentation/controller/login_controller.dart';
import 'package:fluttercleanarchitecture/features/auth/login/presentation/ui/widget/dont_have_account.dart';
import 'package:fluttercleanarchitecture/features/auth/login/presentation/ui/widget/forgot_password.dart';
import 'package:fluttercleanarchitecture/features/auth/login/presentation/ui/widget/login_button.dart';
import 'package:fluttercleanarchitecture/features/auth/login/presentation/ui/widget/login_with.dart';
import 'package:fluttercleanarchitecture/shared/styled_textfield.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
                  validator: Validators.validateEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: kMedium),
                StyledTextField(
                  controller: _passwordController,
                  label: 'Password'.hardcoded,
                  validator: Validators.validatePassword,
                  obscureText: true,
                ),
                const ForgotPassword(),
                const SizedBox(height: kSmall),
                LoginButton(onPressed: _login),
                const SizedBox(height: kLarge),
                const LoginWith(),
                const SizedBox(height: kLarge),
                const DontHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _listener() {
    // listen for error
    ref.listen(loginControllerProvider.select((value) => value.error), (
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
      loginControllerProvider.select((value) => value.isLoginSuccess),
      (_, next) {
        if (next) {
          context.go('/home');
        }
      },
    );
  }

  void _login() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      // collect form data from controllers
      final formData = {
        'email': _emailController.text,
        'password': _passwordController.text,
      };

      // set form data
      ref.read(loginControllerProvider.notifier).setFormData(formData);
      // login - call api
      ref.read(loginControllerProvider.notifier).login();
    }
  }
}
