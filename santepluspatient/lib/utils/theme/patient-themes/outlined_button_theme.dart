import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); 

  
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.primaryRed,
      side: const BorderSide(color: AppColors.primaryRed),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
      ),
    ),
  );

  
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.accentWhite,
      side: const BorderSide(color: AppColors.accentWhite),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: AppColors.textwhite,
      ),
    ),
  );
}