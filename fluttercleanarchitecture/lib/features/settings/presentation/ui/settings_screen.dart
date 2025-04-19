import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/core/route/route_name.dart';
import 'package:fluttercleanarchitecture/features/settings/presentation/controller/setting_controller.dart';
import 'package:fluttercleanarchitecture/shared/styled_text.dart';
import 'package:go_router/go_router.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledAppBarText('Settings'.hardcoded),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(settingControllerProvider.notifier).logout();
                },
                child: Text('Logout'.hardcoded),
              ),

              ElevatedButton(
                onPressed: () {
                  context.pushNamed(deleteAccountRoute);
                },
                child: Text('Delete Account'.hardcoded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
