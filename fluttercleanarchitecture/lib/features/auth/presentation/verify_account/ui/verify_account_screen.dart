import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/verify_account/ui/widgets/verify_account_form_list.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';

class VerifyAccountScreen extends ConsumerStatefulWidget {
  final String email;
  const VerifyAccountScreen({required this.email, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VerifyAccountScreenState();
}

class _VerifyAccountScreenState extends ConsumerState<VerifyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledAppBarText('Verify Account'.hardcoded),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: VerifyAccountFormList(email: widget.email),
    );
  }
}
