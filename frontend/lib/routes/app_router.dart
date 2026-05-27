import 'package:flutter/material.dart';
import 'package:frontend/features/auth/auth_routes.dart';
import 'package:frontend/features/auth/presentations/screens/create_account_credentials_screen.dart';
import 'package:frontend/features/auth/presentations/screens/create_account_location_screen.dart';
import 'package:frontend/features/auth/presentations/screens/landing_screen.dart';
import 'package:frontend/features/auth/presentations/screens/login_screen.dart';

class AppRouter {
  AppRouter._();

  static Map<String, WidgetBuilder> get routes => {
        AuthRoutes.landing: (_) => const LandingScreen(),
        AuthRoutes.login: (_) => const LoginScreen(),
        AuthRoutes.createAccountLocation: (_) =>
            const CreateAccountLocationScreen(),
        AuthRoutes.createAccountCredentials: (_) =>
            const CreateAccountCredentialsScreen(),
      };
}