import '/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 35.0,
      fontWeight: FontWeight.bold,
      color: AppColors.textSecondary,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 27.0,
      fontWeight: FontWeight.w600,
      color: AppColors.textSecondary,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 21.0,
      fontWeight: FontWeight.w600,
      color: AppColors.textSecondary,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: AppColors.textSecondary,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: AppColors.textSecondary,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: AppColors.textSecondary,
    ),

    bodyLarge: const TextStyle().copyWith(
      fontSize: 19.0,
      fontWeight: FontWeight.w600,
      color: AppColors.textSecondary,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 19.0,
      fontWeight: FontWeight.w500,
      color: AppColors.textSecondary,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 19.0,
      fontWeight: FontWeight.w400,
      color: AppColors.textDarkGrey,
    ),

    labelLarge: const TextStyle().copyWith(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: AppColors.textgrey,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 13.0,
      fontWeight: FontWeight.w500,
      color: AppColors.textgrey,
    ),
  );



  
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 35.0,
      fontWeight: FontWeight.bold,
      color: AppColors.textwhite,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 27.0,
      fontWeight: FontWeight.w600,
      color: AppColors.textwhite,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 21.0,
      fontWeight: FontWeight.w600,
      color: AppColors.textwhite,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: AppColors.textwhite,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: AppColors.textwhite,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: AppColors.textwhite,
    ),

    bodyLarge: const TextStyle().copyWith(
      fontSize: 19.0,
      fontWeight: FontWeight.w600,
      color: AppColors.textwhite,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 19.0,
      fontWeight: FontWeight.w500,
      color: AppColors.textwhite,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 19.0,
      fontWeight: FontWeight.w400,
      color: AppColors.textwhite,
    ),

    labelLarge: const TextStyle().copyWith(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: AppColors.textgrey,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 13.0,
      fontWeight: FontWeight.w500,
      color: AppColors.textgrey,
    ),
  );
}