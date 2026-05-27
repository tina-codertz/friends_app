import 'package:flutter/material.dart';
import 'package:frontend/core/constants/app_strings.dart';
import 'package:frontend/core/theme/app_colors.dart';
import 'package:frontend/core/theme/app_text_styles.dart';
import 'package:frontend/core/widgets/gradient_button.dart';
import 'package:frontend/core/widgets/pulse_map_background.dart';
import 'package:frontend/features/auth/presentations/widgets/location_sharing_card.dart';

class CreateAccountLocationScreen extends StatefulWidget {
  const CreateAccountLocationScreen({super.key});

  @override
  State<CreateAccountLocationScreen> createState() =>
      _CreateAccountLocationScreenState();
}

class _CreateAccountLocationScreenState
    extends State<CreateAccountLocationScreen> {
  bool _locationEnabled = true;
    @override
  Widget build(BuildContext context) {
    return PulseMapBackground(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
                              const SizedBox(height: 32),
              Text(AppStrings.appName, style: AppTextStyles.appTitle),
              const SizedBox(height: 8),
              Text(AppStrings.tagline, style: AppTextStyles.tagline),
              const SizedBox(height: 16),
              Container(
                height: 2,
                color: AppColors.cyan,
              ),
              const SizedBox(height: 24),
                            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.cardBackground.withOpacity(0.85),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: AppColors.purple.withOpacity(0.4),
                  ),
                ),
                child: LocationSharingCard(
                  value: _locationEnabled,
                  onChanged: (newValue) {
                    setState(() {
                      _locationEnabled = newValue;
                    });
                  },
                ),
              ),
                            const SizedBox(height: 24),
              GradientButton(
                label: AppStrings.createAccount,
                icon: Icons.rocket_launch,
                onPressed: () {
                  // TODO: Step 11 navigation
                },
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.adjustDetails,
                  style: AppTextStyles.buttonSecondary,
                ),
              ),
              const SizedBox(height: 8),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back, color: AppColors.cyan, size: 18),
                label: Text(
                  AppStrings.backToLogin,
                  style: AppTextStyles.link,
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}