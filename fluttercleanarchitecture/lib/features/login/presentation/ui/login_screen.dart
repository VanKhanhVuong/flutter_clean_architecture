import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/login/presentation/ui/widget/login_form.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledAppBarText('Login Screen'),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: const LoginForm(),
    );
  }
}
