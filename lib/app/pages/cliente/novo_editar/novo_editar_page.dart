import 'package:controle_producao/app/components/InputDefault.dart';
import 'package:controle_producao/app/components/titleDefault.dart';
import 'package:controle_producao/app/models/Caixa_model.dart';
import 'package:flutter/material.dart';

class NovoEditarPage extends StatefulWidget {
  final String title;
  const NovoEditarPage({Key key, this.title = "NovoEditar"}) : super(key: key);

  @override
  _NovoEditarPageState createState() => _NovoEditarPageState();
}

class _NovoEditarPageState extends State<NovoEditarPage> {
  CaixaModel caixaModel = CaixaModel();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          TitleDefault(
            title: "Métricas",
          ),
          Row(
            children: <Widget>[
              InputDefault(
                flex: 4,
                label: "Comprimento",
              ),
              InputDefault(
                flex: 3,
                label: "Largura",
              ),
              InputDefault(
                flex: 3,
                label: "Altura",
              ),
            ],
          ),
          Row(
            children: <Widget>[
              InputDefault(
                flex: 1,
                label: "Orelha",
              ),
              InputDefault(
                flex: 1,
                label: "Gramatura",
              ),
            ],
          ),
          TitleDefault(
            title: "Clíente",
          ),
          InputDefault(
            label: "Custo",
          ),
          InputDefault(
            label: "Cliente",
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child:
                  const Text('Gradient Button', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
