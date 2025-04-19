import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/common/style/dimens.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/delete_account/controller/delete_account_controller.dart';

import 'package:fluttercleanarchitecture/shared/styled_button.dart';

class DeleteAccountButton extends ConsumerWidget {
  final VoidCallback onPressed;
  const DeleteAccountButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      deleteAccountControllerProvider.select((value) => value.isLoading),
    );
    return SizedBox(
      width: double.infinity,
      child: FilledButton.icon(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: kMedium),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kSmall),
          ),
        ),
        label: StyledButtonText('Delete Account'.hardcoded),
        icon:
            isLoading
                ? const CircularProgressIndicator.adaptive()
                : const Icon(Icons.person_add),
        onPressed: isLoading ? null : onPressed,
      ),
    );
  }
}
