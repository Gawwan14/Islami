import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/homeScreen/hadeth/hadeth.dart';
import 'package:islami/ui/homeScreen/hadeth/hadethTitleWidget.dart';

class HadethTab extends StatefulWidget {
   HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) {
      loadAhadeth();
    }
    return Column(children: [
      Expanded(flex: 1, child: Image.asset("assets/images/hadeth_logo.png")),
      Expanded(
        flex: 3,
        child: Container(
          child: allHadeth.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return HadethTitleWidget(allHadeth[index]);
                  },
                  itemCount: allHadeth.length,
                  separatorBuilder: (_, __) => Container(
                    height: 1,
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.secondary,
                    margin: EdgeInsets.symmetric(horizontal: 64),
                  ),
                ),
        ),
      ),
    ]);
  }

  void loadAhadeth() async {
    String fileContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allAhadethContent = fileContent.trim().split("#");
    for (int i = 0; i < allAhadethContent.length; i++) {
      String singleHadeth = allAhadethContent[i].trim();
      String title = singleHadeth.substring(0, singleHadeth.indexOf("\n"));
      String content = singleHadeth.substring(singleHadeth.indexOf("\n") + 1);
      Hadeth hadeth = Hadeth(title, content);
      allHadeth.add(hadeth);
    }
    setState(() {});
  }
}
