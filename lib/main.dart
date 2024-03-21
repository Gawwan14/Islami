import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ui/SuraDetials/SuraDetails.dart';
import 'package:islami/ui/headethDetials/HeadethDetailsScreen.dart';
import 'package:islami/ui/homeScreen/HomeScreen.dart';
import 'package:islami/ui/myThemeData.dart';
import 'package:islami/ui/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.ligth,
      darkTheme: MyThemeData.dark,
      themeMode: ThemeMode.dark,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        HeadthDetailsScreen.routeName: (_) => HeadthDetailsScreen(),
        SuraDetails.routeName: (_) => SuraDetails(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
