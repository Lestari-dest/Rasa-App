import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rasa_app/core/routers/router_name.dart';
import 'package:rasa_app/presentation/forgot_password/pages/forgot_password_page.dart';
import 'package:rasa_app/presentation/forgot_password/pages/reset_password_page.dart';
import 'package:rasa_app/presentation/login/pages/login_page.dart';
import 'package:rasa_app/presentation/main/pages/main_page.dart';
import 'package:rasa_app/presentation/onboading/pages/onboarding1_page.dart';
import 'package:rasa_app/presentation/onboading/pages/onboarding2_page.dart';
import 'package:rasa_app/presentation/onboading/pages/onboarding3_page.dart';
import 'package:rasa_app/presentation/onboading/pages/welcome_page.dart';
import 'package:rasa_app/presentation/register/pages/register_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.g.dart';

@Riverpod(keepAlive: true)
Raw<GoRouter> router(RouterRef ref) {
  return GoRouter(
    initialLocation: '/welcome',
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: '/onboarding1',
        name: RouteName.onboarding1,
        builder: (context, state) => const Onboarding1Page(),
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const Onboarding1Page(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0); // Mulai dari kanan
            const end = Offset.zero; // Akhirnya di tengah
            const curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
        ),
      ),
      GoRoute(
        path: '/onboarding2',
        name: RouteName.onboarding2,
        builder: (context, state) => const Onboarding2Page(),
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const Onboarding2Page(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0); // Mulai dari kanan
            const end = Offset.zero; // Akhirnya di tengah
            const curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
        ),
      ),
      GoRoute(
        path: '/onboarding3',
        name: RouteName.onboarding3,
        builder: (context, state) => const Onboarding3Page(),
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const Onboarding3Page(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0); // Mulai dari kanan
            const end = Offset.zero; // Akhirnya di tengah
            const curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
        ),
      ),
      GoRoute(
        path: '/welcome',
        name: RouteName.welcome,
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: '/login',
        name: RouteName.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/register',
        name: RouteName.register,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: '/forgotPassword',
        name: RouteName.forgotPassword,
        builder: (context, state) => const ForgotPasswordPage(),
      ),
      GoRoute(
        path: '/resetPassword',
        name: RouteName.resetPassword,
        builder: (context, state) => const ResetPasswordPage(),
      ),
      GoRoute(
        path: '/main',
        name: RouteName.main,
        builder: (context, state) => const MainPage(),
      ),
    ],
  );
}
