import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/features/auth/signup/presentation/ui/widget/signup_form_list.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledAppBarText('Sign Up'.hardcoded),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: const SignUpFormList(),
    );
  }
}
