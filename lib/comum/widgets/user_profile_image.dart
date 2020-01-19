import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final double size;
  final int imageIndex;
  final bool disabled;

  const UserProfileImage(
      {Key key, this.size = 50.0, this.imageIndex = 0, this.disabled = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) => Container(
        constraints: BoxConstraints(
          maxHeight: this.size,
          maxWidth: this.size,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(this.size),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/profile_image/$imageIndex.jpg"),
          ),
        ),
        foregroundDecoration: this.disabled
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(this.size),
                backgroundBlendMode: BlendMode.color,
                color: Colors.black,
              )
            : null,
      );
}
