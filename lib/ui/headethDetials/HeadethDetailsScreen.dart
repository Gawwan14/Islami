import 'package:flutter/material.dart';
import 'package:islami/ui/homeScreen/hadeth/hadeth.dart';

import '../myThemeData.dart';

class HeadthDetailsScreen extends StatelessWidget {
  static const String routeName = "headeth-details";

  const HeadthDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
        appBar: AppBar(
          title: Text("${hadeth.title}"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 64),
          child: Card(
            child: SingleChildScrollView(
              child: Text(
                "${hadeth.content}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
