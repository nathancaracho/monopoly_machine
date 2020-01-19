import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final Color color;

  const Button({Key key, this.text, this.onPress, this.color})
      : super(key: key);

  const Button.cancel({Key key, this.text, this.onPress})
      : this.color = Colors.red,
        super(key: key);

  const Button.sucess({Key key, this.text, this.onPress})
      : this.color = Colors.green,
        super(key: key);

  @override
  Widget build(BuildContext context) => ButtonTheme(
        minWidth: MediaQuery.of(context).size.width / 2 - 20,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        child: FlatButton(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: onPress,
          color: color,
        ),
      );
}
