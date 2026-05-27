//define the app theme globally in one place to avoid code duplication and to make it easier to change the theme later

import "package:flutter/material.dart";
import "package:frontend/core/theme/app_colors.dart";
import "package:frontend/core/theme/app_text_styles.dart";

class AppTheme{
    AppTheme._();

    static ThemeData get darkTheme {
        return ThemeData(
            brightness:Brightness.dark,
            useMaterial3:true,
            colorScheme:ColorScheme.dark(
                primary:AppColors.cyan,
                secondary:AppColors.pink,
                surface:AppColors.cardBackground,
                onPrimary:AppColors.background,
                onSurface:AppColors.white,
            ),
            scaffoldBackgroundColor:AppColors.background,
            textTheme:const TextTheme(
                bodyMedium:AppTextStyles.body,
                labelMedium:AppTextStyles.label,
                titleLarge:AppTextStyles.appTitle,
            ),
        );
    }
}