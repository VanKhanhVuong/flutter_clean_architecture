import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/reset_password/ui/widgets/reset_password_from_list.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';

class ResetPasswordScreen extends ConsumerStatefulWidget {
  final String email;
  const ResetPasswordScreen({super.key, required this.email});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledAppBarText('Reset Password'.hardcoded),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: ResetPasswordFormList(email: widget.email),
    );
  }
}
