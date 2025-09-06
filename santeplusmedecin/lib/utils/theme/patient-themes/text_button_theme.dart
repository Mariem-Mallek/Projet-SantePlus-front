import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TTextButtonTheme {
  TTextButtonTheme._();

  // Light Theme - Rouge vif sur fond clair
  static final TextButtonThemeData lightTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all<Color>(
        AppColors.buttonPrimary, // Rouge principal
      ),
      backgroundColor: WidgetStateProperty.all<Color>(
        Colors.transparent,
      ),
      overlayColor: WidgetStateProperty.all<Color>(
        AppColors.buttonPrimary.withAlpha(30), // léger rouge au clic
      ),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );

  // Dark Theme - Blanc ou gris clair sur fond sombre
  static final TextButtonThemeData darkTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all<Color>(
        AppColors.white, // Texte blanc pour contraste
      ),
      backgroundColor: WidgetStateProperty.all<Color>(
        Colors.transparent,
      ),
      overlayColor: WidgetStateProperty.all<Color>(
        AppColors.white.withAlpha(30), // léger blanc au clic
      ),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}