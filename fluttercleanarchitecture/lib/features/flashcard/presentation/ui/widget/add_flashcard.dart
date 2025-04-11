import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/common/style/dimens.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';
import 'package:fluttercleanarchitecture/shared/styled_textfield.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/controller/create_flashcard_controller.dart';

class FlashcardForm extends ConsumerStatefulWidget {
  const FlashcardForm({super.key});

  @override
  ConsumerState<FlashcardForm> createState() => _FlashcardFormState();
}

class _FlashcardFormState extends ConsumerState<FlashcardForm> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _questionController;
  late TextEditingController _answerController;

  @override
  void initState() {
    super.initState();
    _questionController = TextEditingController();
    _answerController = TextEditingController();
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
        title: StyledAppBarText('Create Flashcard'.hardcoded),
        backgroundColor: Colors.blue[500],
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
                    child: const Text('Create Flashcard'),
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
      createFlashcardControllerProvider.select((state) => state.errorMessage),
      (_, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(next), backgroundColor: Colors.red),
          );
        }
      },
    );

    ref.listen(
      createFlashcardControllerProvider.select((state) => state.isSuccess),
      (_, next) {
        if (next == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Flashcard created successfully!')),
          );
          _questionController.clear();
          _answerController.clear();
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

      ref
          .read(createFlashcardControllerProvider.notifier)
          .setFormData(formData);
      ref.read(createFlashcardControllerProvider.notifier).createFlashcard();
    }
  }
}
