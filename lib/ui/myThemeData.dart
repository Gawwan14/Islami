import 'package:flutter/material.dart';

class MyThemeData {
  static const bool isDarkEnabled = true;
  static const primaryLight = Color(0xFFB7935F);
  static const primaryDark = Color(0xFF141A2E);
  static const secondaryDark = Color(0xFFFACC1D);
  static const String fontMessiri = 'messiri';
  static final ThemeData ligth = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 25,
        fontFamily: fontMessiri,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontFamily: fontMessiri,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 12,
      surfaceTintColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryLight,
      //selectedItemColor: Colors.black,
      //unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryLight,
      primary: primaryLight,
      secondary: primaryLight,
    ),
    useMaterial3: true,
  );
  static final ThemeData dark = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 25,
        fontFamily: fontMessiri,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontFamily: fontMessiri,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontFamily: fontMessiri,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
    cardTheme: CardTheme(
      color: MyThemeData.primaryDark,
      elevation: 12,
      surfaceTintColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryDark,
      selectedItemColor: MyThemeData.secondaryDark,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        color: secondaryDark,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryDark,
      primary: primaryDark,
      secondary: secondaryDark,
    ),
    useMaterial3: true,
  );

  static String getMainScreenImage() {
    return MyThemeData.isDarkEnabled
        ? "assets/images/dark_bg.png"
        : "assets/images/default_bg.png";
  }

  static String getSplashScreenImage() {
    return MyThemeData.isDarkEnabled
        ? "assets/images/splash-dark.png"
        : "assets/images/splash.png";
  }
}
