import 'package:flutter/material.dart';
import 'package:frontend/core/constants/app_strings.dart';
import 'package:frontend/core/theme/app_colors.dart';
import 'package:frontend/core/theme/app_text_styles.dart';
import 'package:frontend/core/widgets/pulse_map_background.dart';
import 'package:frontend/core/widgets/pulse_progress_bar.dart';
import 'package:frontend/core/widgets/pulse_text_field.dart';
class CreateAccountCredentialsScreen extends StatefulWidget {
  const CreateAccountCredentialsScreen({super.key});

  @override
  State<CreateAccountCredentialsScreen> createState() =>
      _CreateAccountCredentialsScreenState();
}

class _CreateAccountCredentialsScreenState
    extends State<CreateAccountCredentialsScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
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
                            const PulseProgressBar(currentStep: 2, totalSteps: 4),
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
                child: Column(
                  children: [
                    PulseTextField(
                      label: AppStrings.emailAddress,
                      hintText: AppStrings.emailHint,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    PulseTextField(
                      label: AppStrings.createPassword,
                      hintText: AppStrings.passwordHint,
                      controller: _passwordController,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
                            Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.white,
                        side: BorderSide(color: AppColors.purple),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      child: Text(
                        AppStrings.back,
                        style: AppTextStyles.buttonSecondary,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        final email = _emailController.text;
                        final password = _passwordController.text;
                        print('Email: $email, Password: $password');
                        // TODO: validate + go to next step
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.pink,
                        side: BorderSide(color: AppColors.purple),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.next,
                            style: AppTextStyles.buttonSecondary.copyWith(
                              color: AppColors.pink,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(Icons.arrow_forward, color: AppColors.pink, size: 18),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                            const SizedBox(height: 16),
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