import 'package:flutter/material.dart';
import 'package:islami/ui/homeScreen/hadeth/hadeth tab .dart';
import 'package:islami/ui/homeScreen/quran/quran.dart';
import 'package:islami/ui/homeScreen/radio/radio.dart';
import 'package:islami/ui/homeScreen/tasbeh/tasbeh.dart';
import 'package:islami/ui/myThemeData.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            MyThemeData.getMainScreenImage(),
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          title: Text(
            "Islami",
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (index) {
            selectedTab = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                label: "Sabha"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                label: "Radio"),
          ],
        ),
        body: tabs[selectedTab],
      ),
    );
  }

  var tabs = [
    Quran(),
    HadethTab(),
    Tasbeh(),
    RadioTab(),
  ];
}
