import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String text;
  final int flex;

  Input({@required this.text, this.flex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: TextFormField(
        scrollPadding: EdgeInsets.all(5),
        style: TextStyle(
          fontSize: 15,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          labelText: text,
        ),
      ),
    );
  }
}
