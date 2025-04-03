import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/provider/auth_state_provider.dart';
import 'package:fluttercleanarchitecture/core/route/route_name.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/ui/home_screen.dart';
import 'package:fluttercleanarchitecture/features/login/presentation/ui/login_screen.dart';
import 'package:fluttercleanarchitecture/features/signup/presentation/ui/signup_screen.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      final isGoingToLogin = state.matchedLocation == '/login';

      if (authState) {
        if (isGoingToLogin) {
          return '/home';
        }
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/login',
        name: loginRoute,
        builder: (context, state) => const LoginScreen(),
        routes: [
          // GoRoute(
          //   path: 'forgotPassword',
          //   name: forgotPasswordRoute,
          //   builder: (context, state) => const Plan(),
          // ),
        ],
      ),
      GoRoute(
        path: '/signup',
        name: signUpRoute,
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/home',
        name: homeRoute,
        builder: (context, state) => const HomeScreen(),
        routes: [
          // GoRoute(
          //   path: 'setting',
          //   name: settingRoute,
          //   // builder: (context, state) => const SettingScreen(),
          // ),
        ],
      ),
    ],
  );
});
