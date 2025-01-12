import 'package:authentication/presentation/ui/authentication/resetpassword_screen.dart';
import 'package:authentication/presentation/ui/authentication/signin_screen.dart';
import 'package:authentication/presentation/ui/authentication/signup_screen.dart';
import 'package:authentication/presentation/ui/dashboard/dashboard_screen.dart';
import 'package:authentication/presentation/ui/splash/splash.dart';
import 'package:authentication/presentation/ui/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  // Define route names
  static const String splashScreen = '/';
  static const String homePage = '/home-page-screen';
  static const String signInPage = '/signin-screen';
  static const String signUpPage = '/signup-screen';
  static const String resetPasswordPage = '/reset-password-screen';
  static const String welcomePage = '/welcome-screen';
  static const String splashPage = '/splash-screen';

  // Define GoRouter
  static final GoRouter router = GoRouter(
    initialLocation: splashPage,
    debugLogDiagnostics: true,
    // observers: [CustomNavigatorObserver()],
    routes: <RouteBase>[
      GoRoute(
        name: signInPage,
        path: signInPage,
        pageBuilder: (context, state) {
          return _getPageRoute(
            context: context,
            child: const SigninScreen(),
            state: state,
          );
        },
      ),
      GoRoute(
        name: signUpPage,
        path: signUpPage,
        pageBuilder: (context, state) {
          return _getPageRoute(
            context: context,
            child: const SignupScreen(),
            state: state,
          );
        },
      ),
      GoRoute(
        name: resetPasswordPage,
        path: resetPasswordPage,
        pageBuilder: (context, state) {
          return _getPageRoute(
            context: context,
            child: const ResetPasswordScreen(),
            state: state,
          );
        },
      ),
      GoRoute(
        name: welcomePage,
        path: welcomePage,
        pageBuilder: (context, state) {
          return _getPageRoute(
            context: context,
            child: const WelcomeScreen(),
            state: state,
          );
        },
      ),
      GoRoute(
        name: splashPage,
        path: splashPage,
        pageBuilder: (context, state) {
          return _getPageRoute(
            context: context,
            child: const SplashScreen(),
            state: state,
          );
        },
      ),
      GoRoute(
        name: homePage,
        path: homePage,
        pageBuilder: (context, state) {
          return _getPageRoute(
            context: context,
            child: const DashboardScreen(),
            state: state,
          );
        },
      ),
    ],
  );

  // Function that handles animations
  static CustomTransitionPage _getPageRoute({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeIn).animate(animation),
          child: child,
        );
      },
    );
  }
}
