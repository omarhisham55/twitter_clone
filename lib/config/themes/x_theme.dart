import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';

ThemeData xTheme() {
  return ThemeData(
    scaffoldBackgroundColor: XColors.primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: XColors.primaryColor,
      titleTextStyle: TextStyle(
          color: XColors.whiteColor, fontWeight: FontWeight.bold, fontSize: 18),
      iconTheme: IconThemeData(color: XColors.whiteColor),
    ),
    iconTheme: const IconThemeData(color: XColors.shadeColor),
    drawerTheme: const DrawerThemeData(
      backgroundColor: XColors.primaryColor,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: XColors.primaryColor,
      elevation: 0.0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: XColors.primaryColor,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: XColors.whiteColor,
      selectedIconTheme: IconThemeData(color: XColors.whiteColor),
    ),
    textTheme: const TextTheme(
      displayMedium: TextStyle(
        color: XColors.whiteColor,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: XColors.whiteColor,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: TextStyle(
        color: XColors.whiteColor,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: XColors.whiteColor,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        color: XColors.whiteColor,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: XColors.whiteColor,
      ),
      bodyMedium: TextStyle(
        color: XColors.shadeColor,
      ),
      bodyLarge: TextStyle(
        color: XColors.shadeColor,
      ),
      titleMedium: TextStyle(color: XColors.whiteColor, fontSize: 18),
      titleSmall: TextStyle(
        color: XColors.shadeColor,
      ),
    ),
  );
}
