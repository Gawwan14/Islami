import 'package:flutter/material.dart';

import 'hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(
          hadeth.title,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
