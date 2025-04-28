import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.tropicalIndigo, surface: AppColors.ghostWhite),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      titleLarge: TextStyle(
        color: AppColors.tropicalIndigo,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: AppColors.tropicalIndigo,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        color: AppColors.coolGray,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: AppColors.tropicalIndigo,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      labelMedium: TextStyle(
        color: AppColors.tropicalIndigo,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: AppColors.tropicalIndigo,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: AppColors.coolGray,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      )),
  fontFamily: GoogleFonts.poppins().fontFamily,
  scaffoldBackgroundColor: AppColors.ghostWhite,
  iconTheme: IconThemeData(
    color: AppColors.tropicalIndigo,
  ),
  drawerTheme: DrawerThemeData(
    backgroundColor: AppColors.ghostWhite,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.ghostWhite,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: AppColors.tropicalIndigo,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColors.tropicalIndigo,
    foregroundColor: AppColors.ghostWhite,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  snackBarTheme: SnackBarThemeData(
    behavior: SnackBarBehavior.fixed,
    backgroundColor: AppColors.greenAlert,
    contentTextStyle: TextStyle(
      color: AppColors.ghostWhite,
      fontWeight: FontWeight.w600,
    ),
    actionTextColor: AppColors.ghostWhite,
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: AppColors.periwinkle,
    linearMinHeight: 4,
  ),
  dividerTheme: DividerThemeData(
    color: AppColors.tropicalIndigo.withAlpha(50),
    thickness: 1,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.tropicalIndigo,
      foregroundColor: AppColors.ghostWhite,
      padding: AppPadding.allMedium,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.tropicalIndigo.withAlpha(50),
        width: 1,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.tropicalIndigo,
        width: 1,
      ),
    ),
    hintStyle: TextStyle(
      color: AppColors.coolGray,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.tropicalIndigo.withAlpha(50),
        width: 1,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: AppColors.ghostWhite,
      foregroundColor: AppColors.tropicalIndigo,
      padding: AppPadding.allMedium,
      side: BorderSide(
        color: AppColors.tropicalIndigo,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.all(AppColors.ghostWhite),
    trackColor: WidgetStateProperty.all(AppColors.tropicalIndigo),
    trackOutlineColor: WidgetStateProperty.all(AppColors.tropicalIndigo),
  ),
);

abstract final class AppColors {
  // Primary
  static const Color black = Color(0xFF000807);
  static const Color coolGray = Color(0xFFA2A3BB);
  static const Color tropicalIndigo = Color(0xFF9395D3);
  static const Color periwinkle = Color(0xFFB3B7EE);
  static const Color ghostWhite = Color(0xFFFBF9FF);
  // Alerts
  static const Color redAlert = Color(0xFFFF746C);
  static const Color greenAlert = Color(0xFF0BDAA9);
  static const Color yellowAlert = Color(0xffffd700);
}

abstract final class AppPadding {
  static const EdgeInsets allMedium = EdgeInsets.all(16);
  static const EdgeInsets allSmall = EdgeInsets.all(8);
  static const EdgeInsets allLarge = EdgeInsets.all(24);
}
