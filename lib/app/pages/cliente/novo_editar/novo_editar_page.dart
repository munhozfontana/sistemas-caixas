import 'package:controle_producao/app/components/InputDefault.dart';
import 'package:controle_producao/app/components/buttonDefault.dart';
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: DefaultButton(
              text: "Salvar",
              onPressed: () {
                print("salvar");
              },
            ),
          ),
        ],
      ),
    );
  }
}
