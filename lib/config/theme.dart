import 'package:flutter/material.dart';

final themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.tropicalIndigo),
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
);


abstract final class AppColors {
  static const Color black = Color(0xFF000807);
  static const Color coolGray = Color(0xFFA2A3BB);
  static const Color tropicalIndigo = Color(0xFF9395D3);
  static const Color periwinkle = Color(0xFFB3B7EE);
  static const Color ghostWhite = Color(0xFFFBF9FF);
}

abstract final class AppPadding {
  static const EdgeInsets allMedium = EdgeInsets.all(16);
  static const EdgeInsets allSmall = EdgeInsets.all(8);
  static const EdgeInsets allLarge = EdgeInsets.all(24);
}
