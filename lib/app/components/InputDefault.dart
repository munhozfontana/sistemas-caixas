import 'package:flutter/material.dart';

class InputDefault extends StatelessWidget {
  final String label;
  final int flex;

  InputDefault({@required this.label, this.flex});

  @override
  Widget build(BuildContext context) {
    if (flex == null) {
      return Padding(
        padding: EdgeInsets.all(10),
        child: TextFormField(
          scrollPadding: EdgeInsets.all(5),
          style: TextStyle(
            fontSize: 15,
          ),
          decoration: InputDecoration(
            labelText: label,
          ),
        ),
      );
    } else {
      return Expanded(
        flex: flex,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            scrollPadding: EdgeInsets.all(5),
            style: TextStyle(
              fontSize: 15,
            ),
            decoration: InputDecoration(
              labelText: label,
            ),
          ),
        ),
      );
    }
  }
}
