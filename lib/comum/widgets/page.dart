import 'package:flutter/material.dart';
import 'package:monopoly_machine/comum/widgets/header.dart';
import 'package:monopoly_machine/comum/widgets/panel.dart';

class Page extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget bottomSheet;

  const Page(
      {Key key, this.title = 'Some Title here', this.body, this.bottomSheet})
      : super(key: key);
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 50, 255, 157),
              Color.fromARGB(255, 59, 132, 230),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text("Monopoly Machine"),
          ),
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height -
                  kToolbarHeight -
                  MediaQuery.of(context).padding.top,
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Header(title: title),
                  ),
                  Flexible(
                    flex: 3,
                    child: Panel(body: body),
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: bottomSheet,
        ),
      );
}
