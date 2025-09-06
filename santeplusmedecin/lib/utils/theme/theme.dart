import 'package:flutter/material.dart';
import 'package:santeplusmedecin/utils/constants/colors.dart';
import 'package:santeplusmedecin/utils/theme/patient-themes/appbar_theme.dart';
import 'package:santeplusmedecin/utils/theme/patient-themes/elevated_button_theme.dart';
import 'package:santeplusmedecin/utils/theme/patient-themes/outlined_button_theme.dart';
import 'package:santeplusmedecin/utils/theme/patient-themes/text_button_theme.dart';

class AppTheme{
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.light,
    primaryColor: const Color(0xFFE53935),
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    textButtonTheme: TTextButtonTheme.lightTextButtonTheme,

  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.dark,
    primaryColor: const Color(0xFFE53935),
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    textButtonTheme: TTextButtonTheme.darkTextButtonTheme,


  );
}