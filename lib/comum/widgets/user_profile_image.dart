import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final double size;

  const UserProfileImage({Key key, this.size = 50.0}) : super(key: key);
  @override
  Widget build(BuildContext context) => Container(
        constraints: BoxConstraints(
          maxHeight: this.size,
          maxWidth: this.size,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(this.size),
          color: Colors.grey,
        ),
      );
}
