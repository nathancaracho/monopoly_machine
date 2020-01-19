import 'package:flutter/material.dart';
import 'package:monopoly_machine/comum/models/user_mode.dart';
import 'package:monopoly_machine/comum/widgets/user_profile_image.dart';
import 'package:monopoly_machine/home/widgets/description.dart';

class UserRow extends StatelessWidget {
  final UserModel user;
  const UserRow({
    Key key,
    this.user,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            UserProfileImage(imageIndex: this.user.imageIndex),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(this.user.name),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    Description(
                      amount: this.user.amount.toString(),
                      winQtd: this.user.winQtd.toString(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
