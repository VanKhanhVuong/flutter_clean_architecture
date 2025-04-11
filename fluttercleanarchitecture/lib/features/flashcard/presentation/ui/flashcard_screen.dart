import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/core/route/route_name.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/controller/flashcards_controller.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/ui/widget/flashcard_list.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';
import 'package:go_router/go_router.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.pushNamed(createFlashCardRoute);
          ref.read(flashcardControllerProvider.notifier).getFlashcards();
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
