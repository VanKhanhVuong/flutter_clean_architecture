import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/style/dimens.dart';
import 'package:fluttercleanarchitecture/features/flashcard/data/dto/response/flashcard_response/flashcard_response.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/controller/edit_flashcard_controller.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';
import 'package:fluttercleanarchitecture/shared/styled_textfield.dart';

class EditFlashcardView extends ConsumerStatefulWidget {
  final FlashcardResponse flashcard;

  const EditFlashcardView({super.key, required this.flashcard});

  @override
  ConsumerState<EditFlashcardView> createState() => _EditFlashcardViewState();
}

class _EditFlashcardViewState extends ConsumerState<EditFlashcardView> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _questionController;
  late TextEditingController _answerController;

  @override
  void initState() {
    super.initState();
    _questionController = TextEditingController(
      text: widget.flashcard.question,
    );
    _answerController = TextEditingController(text: widget.flashcard.answer);
  }

  @override
  void dispose() {
    _questionController.dispose();
    _answerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return Scaffold(
      appBar: AppBar(
        title: StyledAppBarText('Edit Flashcard'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(kMedium),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  StyledTextField(
                    controller: _questionController,
                    label: 'Question',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a question';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: kMedium),
                  StyledTextField(
                    controller: _answerController,
                    label: 'Answer',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an answer';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: kExtraLarge),
                  ElevatedButton(
                    onPressed: _onSubmit,
                    child: const Text('Update Flashcard'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _listener() {
    ref.listen(
      editFlashcardControllerProvider.select((state) => state.errorMessage),
      (_, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(next), backgroundColor: Colors.red),
          );
        }
      },
    );

    ref.listen(
      editFlashcardControllerProvider.select((state) => state.isSuccess),
      (_, next) {
        if (next == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Flashcard updated successfully!')),
          );
        }
      },
    );
  }

  void _onSubmit() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      final formData = {
        'question': _questionController.text,
        'answer': _answerController.text,
      };

      ref.read(editFlashcardControllerProvider.notifier).setFormData(formData);

      ref
          .read(editFlashcardControllerProvider.notifier)
          .updateFlashcard(widget.flashcard.id); // Gọi hàm update
    }
  }
}
