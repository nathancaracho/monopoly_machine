import 'package:flutter/material.dart';

const Radius radius = Radius.circular(40);

class Panel extends StatelessWidget {
  final Widget body;

  const Panel({Key key, @required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: radius,
              topRight: radius,
            )),
        child: body,
      );
}
