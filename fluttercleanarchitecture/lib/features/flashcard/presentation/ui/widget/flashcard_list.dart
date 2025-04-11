import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/route/route_name.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/controller/delete_flashcard_controller.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/controller/flashcards_controller.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';
import 'package:go_router/go_router.dart';

class FlashcardListScreen extends ConsumerStatefulWidget {
  const FlashcardListScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FlashcardListScreenState();
}

class _FlashcardListScreenState extends ConsumerState<FlashcardListScreen> {
  @override
  void initState() {
    super.initState();
    // Gọi API khi widget được build lần đầu
    Future.microtask(() {
      ref.read(flashcardControllerProvider.notifier).getFlashcards();
    });
  }

  @override
  Widget build(BuildContext context) {
    final flashcardState = ref.watch(flashcardControllerProvider);

    if (flashcardState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (flashcardState.errorMessage != null) {
      return Center(child: Text('Lỗi: ${flashcardState.errorMessage}'));
    }

    final flashcards = flashcardState.flashcards;

    if (flashcards.isEmpty) {
      return const Center(child: Text('Không có flashcard nào.'));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: flashcards.length,
      itemBuilder: (context, index) {
        final flashcard = flashcards[index];
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            title: StyledBodyText(flashcard.question),
            subtitle: StyledBodyText(flashcard.answer),
            trailing: SizedBox(
              width: 96, // hoặc một giá trị phù hợp, mỗi IconButton ~ 48
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () async {
                      await ref
                          .read(deleteFlashcardControllerProvider.notifier)
                          .deleteFlashcard(flashcard.id);
                      ref
                          .read(flashcardControllerProvider.notifier)
                          .getFlashcards();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () async {
                      await context.pushNamed(
                        editFlashCardRoute,
                        extra: flashcard,
                      );
                      ref
                          .read(flashcardControllerProvider.notifier)
                          .getFlashcards();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
