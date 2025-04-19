import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/delete_account/ui/widgets/delete_account_form_list.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';

class DeleteAccountScreen extends ConsumerStatefulWidget {
  const DeleteAccountScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends ConsumerState<DeleteAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledAppBarText('Delete Account'.hardcoded),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: const DeleteAccountFormList(),
    );
  }
}
