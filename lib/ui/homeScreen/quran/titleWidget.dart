import 'package:flutter/material.dart';
import 'package:islami/ui/SuraDetials/SuraDetails.dart';

class TitleWidget extends StatelessWidget {
  String title;

  int index;

  TitleWidget(this.title, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraDetails.routeName,
          arguments: SuraDetailsArgu(index, title),
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
