import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/forgot_account/ui/widgets/forgot_account_form_list.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';

class ForgotAccountScreen extends ConsumerStatefulWidget {
  const ForgotAccountScreen({super.key});

  @override
  ConsumerState<ForgotAccountScreen> createState() =>
      _ForgotAccountScreenState();
}

class _ForgotAccountScreenState extends ConsumerState<ForgotAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledAppBarText('Forgot Account Screen')),
      body: const ForgotAccountFormList(),
    );
  }
}
