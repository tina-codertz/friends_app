import 'package:flutter/material.dart';
import 'package:frontend/core/constants/app_strings.dart';
import 'package:frontend/core/theme/app_text_styles.dart';
import 'package:frontend/core/widgets/gradient_button.dart';
import 'package:frontend/core/widgets/pulse_map_background.dart';
import 'package:frontend/features/auth/auth_routes.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PulseMapBackground(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
                        children: [
              const SizedBox(height: 48),
              Text(
                AppStrings.appName,
                style: AppTextStyles.appTitle,
              ),
              const SizedBox(height: 8),
              Text(
                AppStrings.tagline,
                style: AppTextStyles.tagline,
              ),
              const Spacer(),
                            GradientButton(
                label: AppStrings.getStarted,
                icon: Icons.rocket_launch,
               onPressed: () {
  Navigator.pushNamed(context, AuthRoutes.createAccountLocation);
},
              ),
              const SizedBox(height: 16),
                            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.alreadyHaveAccount,
                    style: AppTextStyles.body,
                  ),
                  TextButton(
                   onPressed: () {
  Navigator.pushNamed(context, AuthRoutes.login);
},
                    child: Text(
                      AppStrings.login,
                      style: AppTextStyles.link,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}