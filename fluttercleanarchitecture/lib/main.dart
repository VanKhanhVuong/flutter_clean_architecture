import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/startup/start_up_screen.dart';
import 'package:fluttercleanarchitecture/main_widget.dart';

void main() async {
  await flutterAppConfig();
  runApp(
    ProviderScope(
      child: StartUpScreen(builder: (context) => const MainWidget()),
    ),
  );
}

Future<void> flutterAppConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.blueAccent),
  );
}
