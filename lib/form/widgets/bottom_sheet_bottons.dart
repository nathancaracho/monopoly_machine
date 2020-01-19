import 'package:flutter/material.dart';
import 'package:monopoly_machine/comum/widgets/button.dart';

class BottomSheetButtons extends StatelessWidget {
  final VoidCallback onFinish;

  const BottomSheetButtons({Key key, this.onFinish}) : super(key: key);
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Button.cancel(
              text: 'Cancel',
              onPress: () => Navigator.pop(context),
            ),
          ),
          Flexible(
            flex: 1,
            child: Button.sucess(
              text: 'Acept',
              onPress: this.onFinish,
            ),
          ),
        ],
      );
}
