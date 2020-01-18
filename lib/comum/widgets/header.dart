import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({Key key, this.title}) : super(key: key);

  List<Widget> getTitle(String title) {
    List<Widget> listWord = [];
    List<String> splitedTitle = title.split(RegExp("\\s+"));

    for (int i = 0; i < splitedTitle.length; i++) {
      FontWeight fontWeight = FontWeight.bold;

      if (i == 0) fontWeight = FontWeight.w300;

      listWord.add(Text(
        splitedTitle[i],
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 10,
          fontWeight: fontWeight,
          fontSize: 14,
        ),
      ));
    }
    return listWord;
  }

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: getTitle(title),
        ),
      );
}
