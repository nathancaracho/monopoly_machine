import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String amount;
  final String winQtd;

  const Description({Key key, this.amount, this.winQtd}) : super(key: key);
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _DescriptionItem(icon: Icons.monetization_on, text: this.amount),
          _DescriptionItem(icon: Icons.grade, text: this.winQtd),
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
