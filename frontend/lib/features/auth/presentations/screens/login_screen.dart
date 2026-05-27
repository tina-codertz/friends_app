
import 'package:flutter/material.dart';
import 'package:frontend/core/constants/app_strings.dart';
import 'package:frontend/core/theme/app_text_styles.dart';
import 'package:frontend/core/widgets/pulse_map_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PulseMapBackground(
      child: SafeArea(
        child: Center(
          child: Text(
            '${AppStrings.login} — coming soon',
            style: AppTextStyles.appTitle,
          ),
        ),
      ),
    );
  }
}