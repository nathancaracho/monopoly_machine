import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _DescriptionItem(icon: Icons.monetization_on, text: '15.000,0'),
          _DescriptionItem(icon: Icons.grade, text: '2'),
        ],
      );
}

class _DescriptionItem extends StatelessWidget {
  final String text;
  final IconData icon;

  const _DescriptionItem({Key key, this.text, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 16,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      );
}
