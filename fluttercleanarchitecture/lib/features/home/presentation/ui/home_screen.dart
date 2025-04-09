import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledAppBarText('Flashcard'.hardcoded),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StyledBodyText('Home Screen'.hardcoded),
            ElevatedButton(
              onPressed: () {
                // Navigate to setting screen
                context.push('/home/setting');
              },
              child: Text('Setting'.hardcoded),
            ),

            ElevatedButton(
              onPressed: () {
                // Navigate to setting screen
                context.push('/home/flash-card');
              },
              child: Text('Flashcard'.hardcoded),
            ),
          ],
        ),
      ),
    );
  }
}
