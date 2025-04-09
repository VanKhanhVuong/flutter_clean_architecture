import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/ui/widget/flashcard_list.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';

class FlashcardScreen extends ConsumerStatefulWidget {
  const FlashcardScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FlashcardScreenState();
}

class _FlashcardScreenState extends ConsumerState<FlashcardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledAppBarText('Flashcard'.hardcoded),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: const FlashcardListScreen(),
    );
  }
}
