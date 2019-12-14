import 'package:flutter/material.dart';

class AproveitamentoPage extends StatefulWidget {
  final String title;
  const AproveitamentoPage({Key key, this.title = "Aproveitamento"})
      : super(key: key);

  @override
  _AproveitamentoPageState createState() => _AproveitamentoPageState();
}

class _AproveitamentoPageState extends State<AproveitamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
