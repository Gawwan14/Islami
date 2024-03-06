import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/SuraDetials/verseItem.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "sura-details";

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgu argus =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArgu;
    if (versesList.isEmpty) {
      loadSura(argus.index);
    }
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(argus.title),
        ),
        body: versesList.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                margin: EdgeInsets.symmetric(vertical: 64, horizontal: 15),
                child: Card(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return VerseItem(versesList[index]);
                    },
                    itemCount: versesList.length,
                    separatorBuilder: (_, __) => Container(
                      height: 1,
                      width: double.infinity,
                      color: Theme.of(context).primaryColor,
                      margin: EdgeInsets.symmetric(horizontal: 64),
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  void loadSura(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/files/${index}.txt");
    List<String> verses = fileContent.trim().split("/n");
    setState(() {
      versesList = verses;
    });
  }
}

class SuraDetailsArgu {
  int index;

  String title;

  SuraDetailsArgu(this.index, this.title);
}
