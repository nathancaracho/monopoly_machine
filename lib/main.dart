import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monopoly_machine/comum/core/router_builder.dart';
import 'package:monopoly_machine/comum/providers/user_list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserListProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Monopoly Machine',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouterBuilder.builder,
      ),
    );
  }
}
