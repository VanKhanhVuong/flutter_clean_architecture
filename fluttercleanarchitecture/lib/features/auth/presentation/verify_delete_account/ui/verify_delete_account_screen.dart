import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/verify_delete_account/ui/widgets/verify_delete_account_form_list.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';

class VerifyDeleteAccountScreen extends ConsumerStatefulWidget {
  final String email;
  const VerifyDeleteAccountScreen({required this.email, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VerifyDeleteAccountScreenState();
}

class _VerifyDeleteAccountScreenState
    extends ConsumerState<VerifyDeleteAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledAppBarText('Verify Delete Account'.hardcoded),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: VerifyDeleteAccountFormList(email: widget.email),
    );
  }
}
