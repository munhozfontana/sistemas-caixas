import 'package:flutter/material.dart';

class ProducaoPage extends StatefulWidget {
  final String title;
  const ProducaoPage({Key key, this.title = "Producao"}) : super(key: key);

  @override
  _ProducaoPageState createState() => _ProducaoPageState();
}

class _ProducaoPageState extends State<ProducaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
