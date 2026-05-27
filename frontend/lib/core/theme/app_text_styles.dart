//define all the text size weight color spacing in one place to avoid code duplication and to make it easier to change the text styles later

import "package:flutter/material.dart";
import "package:frontend/core/theme/app_colors.dart";

class AppTextStyles{
    AppTextStyles._();

    static const TextStyle appTitle = TextStyle(
        fontSize:32,
        fontWeight:FontWeight.bold,
        color:AppColors.pink,
    );
    static const TextStyle tagline = TextStyle(
    fontSize:12,
    fontWeight:FontWeight.w500,
    color:AppColors.white,
    letterSpacing:4,
    );

    static const TextStyle body = TextStyle(
        fontSize:13,
        fontWeight:FontWeight.normal,
        color:AppColors.white,
        height:1.5,
    );
    static const TextStyle label = TextStyle(
        fontSize:12,
        fontWeight:FontWeight.w500,
        color:AppColors.white,
    );
    static const TextStyle link = TextStyle(
        fontSize:14,
        fontWeight:FontWeight.w500,
        color:AppColors.cyan,
    );

    static const TextStyle buttonPrimary = TextStyle(
        fontSize:16,
        fontWeight:FontWeight.w600,
        color:AppColors.background,
    );

    static const TextStyle  buttonSecondary = TextStyle(
        fontSize:14,
        fontWeight:FontWeight.w500,
        color:AppColors.white,
    );

    static const TextStyle cardTitle = TextStyle(
        fontSize:16,
        fontWeight:FontWeight.bold,
        color:AppColors.white,
    );

}