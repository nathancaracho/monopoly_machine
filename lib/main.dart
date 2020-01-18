import 'package:flutter/material.dart';
import 'package:monopoly_machine/comum/core/router_builder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monopoly Machine',
      onGenerateRoute: RouterBuilder.builder,
    );
  }
}
