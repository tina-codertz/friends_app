import 'package:flutter/material.dart';
import 'package:frontend/core/theme/app_text_styles.dart';
import 'package:frontend/core/widgets/gradient_button.dart';
import 'package:frontend/core/widgets/pulse_map_background.dart';
import 'package:frontend/core/widgets/pulse_progress_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PulseMap',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: PulseMapBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "PulseMap",
                style: AppTextStyles.appTitle,
              ),

              const SizedBox(height: 24),

              GradientButton(
                label: "Create Account",
                icon: Icons.rocket_launch,
                onPressed: () {
                  print("Create Account button pressed");
                },
              ),
              
              const SizedBox(height:24),
              const PulseProgressBar(currentStep:2, totalSteps:4),
            ],
          ),
        ),
      ),
    );
  }
}