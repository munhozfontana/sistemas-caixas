import 'package:flutter/material.dart';

class TitleDefault extends StatelessWidget {
  final String title;

  const TitleDefault({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, left: 10),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 20,
          shadows: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
    );
  }
}
