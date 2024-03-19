import 'package:flutter/material.dart';
import 'package:islami/ui/headethDetials/HeadethDetailsScreen.dart';

import 'hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HeadthDetailsScreen.routeName, arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
