import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.tropicalIndigo),
  textTheme: GoogleFonts.poppinsTextTheme(),
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
