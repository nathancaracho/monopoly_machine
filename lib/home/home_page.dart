import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monopoly_machine/comum/widgets/page.dart';
import 'package:monopoly_machine/home/widgets/user_row.dart';

final List<UserRow> userList = [
  UserRow(),
  UserRow(),
  UserRow(),
  UserRow(),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Page(
        title: 'User List',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: ListView.builder(
                itemCount: userList.length,
                itemBuilder: (_, item) => UserRow(),
              ),
            ),
            _BottomSheet(),
          ],
        ),
      );
}

class _BottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, "/formpage");
            },
          )
        ],
      );
}
