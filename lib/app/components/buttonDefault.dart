import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const DefaultButton({Key key, @required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.blue,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(8.0),
      splashColor: Colors.blueAccent,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
