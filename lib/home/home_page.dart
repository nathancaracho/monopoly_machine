import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monopoly_machine/comum/models/user_mode.dart';
import 'package:monopoly_machine/comum/providers/user_list_provider.dart';
import 'package:monopoly_machine/comum/widgets/page.dart';
import 'package:monopoly_machine/home/widgets/user_row.dart';
import 'package:provider/provider.dart';

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
              child: Consumer<UserListProvider>(
                builder: (context, provider, _) => ListView.builder(
                  itemCount: provider.userList.length,
                  itemBuilder: (_, item) =>
                      UserRow(user: provider.userList[item]),
                ),
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
