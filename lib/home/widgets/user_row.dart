import 'package:flutter/material.dart';
import 'package:monopoly_machine/comum/widgets/user_profile_image.dart';
import 'package:monopoly_machine/home/widgets/description.dart';

class UserRow extends StatelessWidget {
  const UserRow({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            UserProfileImage(),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Nathan Branco Carcho'),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    Description(),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
