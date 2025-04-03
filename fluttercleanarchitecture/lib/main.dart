import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/startup/start_up_screen.dart';
import 'package:fluttercleanarchitecture/main_widget.dart';

void main() {
  runApp(
    ProviderScope(
      child: StartUpScreen(builder: (context) => const MainWidget()),
    ),
  );
}
