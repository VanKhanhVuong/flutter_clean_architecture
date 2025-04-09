import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/common/style/dimens.dart';
import 'package:fluttercleanarchitecture/core/utils/validators.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/signup/controller/register_controller.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/signup/ui/widget/already_have_account.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/signup/ui/widget/signup_button.dart';
import 'package:fluttercleanarchitecture/shared/styled_textfield.dart';
import 'package:go_router/go_router.dart';

class SignUpFormList extends ConsumerStatefulWidget {
  const SignUpFormList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpFormListState();
}

class _SignUpFormListState extends ConsumerState<SignUpFormList> {
  late final String tempEmail;

  // form key
  final _formKey = GlobalKey<FormState>();

  // controllers
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    // controllers
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    // dispose controllers
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  validator: Validators.validateName,
                  label: 'Name'.hardcoded,
                ),
                const SizedBox(height: kMedium),
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
                SignUpButton(onPressed: _onSubmit),
                const SizedBox(height: kExtraLarge),
                AlreadyHaveAccount(onPressed: _navigateToLogin),
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
      registerControllerProvider.select((value) => value.errorMessage),
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
    ref.listen(registerControllerProvider.select((value) => value.isSuccess), (
      _,
      next,
    ) {
      if (next != null && next) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: Text('Sign Up Successful'.hardcoded),
              content: Text(
                'Please check your email for verification and please  verify your account'
                    .hardcoded,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    // close dialog
                    context.pop();
                    tempEmail = _emailController.text;
                    // clear controllers
                    _clearController();
                    // navigate to Verify Account screen
                    _navigateToVerifyAccount();
                  },
                  child: Text('Ok'.hardcoded),
                ),
              ],
            );
          },
        );
      }
    });
  }

  void _clearController() {
    _nameController.clear();
    _emailController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();
  }

  void _navigateToLogin() {
    context.go('/login');
  }

  void _navigateToVerifyAccount() {
    // Lấy giá trị email từ controller và thêm vào query params
    context.go('/signup/verify-account?email=$tempEmail');
  }

  void _onSubmit() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      // collect form data from controllers
      final formData = {
        'name': _nameController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
        'password_confirmation': _confirmPasswordController.text,
      };

      // set form data
      ref.read(registerControllerProvider.notifier).setFormData(formData);
      // sign up - call api
      ref.read(registerControllerProvider.notifier).register();
    }
  }
}
