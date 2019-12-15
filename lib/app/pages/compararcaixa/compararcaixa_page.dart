import 'package:controle_producao/app/components/suggestionsAproveitamento.dart';
import 'package:flutter/material.dart';

class CompararCaixaPage extends StatefulWidget {
  final String title;
  const CompararCaixaPage({Key key, this.title = "Aproveitamento"})
      : super(key: key);

  @override
  _CompararCaixaPageState createState() => _CompararCaixaPageState();
}

class _CompararCaixaPageState extends State<CompararCaixaPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SuggestionsDefault(),
        Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                height: 124,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.black87,
                  gradient: LinearGradient(
                    colors: [
                      index == 0 ? Colors.blue : Colors.red,
                      index == 0 ? Colors.green : Colors.purple,
                    ],
                    begin: Alignment.bottomCenter,
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 6),
                      blurRadius: 9,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "M.PAULISTA",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Altura",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "150.0 cm",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Largura",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "150.0 cm",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Comprimento",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "150.0 cm",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
