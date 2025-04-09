import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/provider/auth_state_provider.dart';
import 'package:fluttercleanarchitecture/core/route/route_name.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/forgot_account/ui/forgot_account_screen.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/reset_password/ui/reset_password_screen.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/verify_account/ui/verify_account_screen.dart';
import 'package:fluttercleanarchitecture/features/flashcard/presentation/ui/flashcard_screen.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/ui/home_screen.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/login/ui/login_screen.dart';
import 'package:fluttercleanarchitecture/features/settings/presentation/ui/settings_screen.dart';
import 'package:fluttercleanarchitecture/features/auth/presentation/signup/ui/signup_screen.dart';
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
      ),
      GoRoute(
        path: '/forgot-password',
        name: forgotPasswordRoute,
        builder: (context, state) => const ForgotAccountScreen(),
        routes: [
          GoRoute(
            path: '/reset-password',
            name: resetPasswordRoute,
            builder: (context, state) {
              // Lấy query parameter 'email'
              final email = state.uri.queryParameters['email'] ?? '';
              return ResetPasswordScreen(
                email: email,
              ); // Truyền email vào ResetPasswordScreen
            },
          ),
        ],
      ),
      GoRoute(
        path: '/signup',
        name: signUpRoute,
        builder: (context, state) => const SignupScreen(),
        routes: [
          GoRoute(
            path: 'verify-account',
            name: verifyAccountRoute,
            builder: (context, state) {
              // Lấy query parameter 'email'
              final email = state.uri.queryParameters['email'] ?? '';
              return VerifyAccountScreen(
                email: email,
              ); // Truyền email vào VerifyAccountScreen
            },
          ),
        ],
      ),
      GoRoute(
        path: '/home',
        name: homeRoute,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: '/flash-card',
            name: flashCardRoute,
            builder: (context, state) => const FlashcardScreen(),
          ),

          GoRoute(
            path: '/setting',
            name: settingRoute,
            builder: (context, state) => const SettingScreen(),
          ),
        ],
      ),
    ],
  );
});
