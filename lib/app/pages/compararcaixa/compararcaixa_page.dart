import 'package:controle_producao/app/components/cardCompararCaixa.dart';
import 'package:controle_producao/app/components/suggestionsAproveitamento.dart';
import 'package:controle_producao/app/models/Caixa_model.dart';
import 'package:flutter/material.dart';

class CompararCaixaPage extends StatefulWidget {
  final String title;
  const CompararCaixaPage({Key key, this.title = "Aproveitamento"})
      : super(key: key);

  @override
  _CompararCaixaPageState createState() => _CompararCaixaPageState();
}

var caixas = <CaixaModel>[
  CaixaModel(
    cliente: "M.PAULISTA 1",
    comprimento: 49.5,
    largura: 44,
    orelha: 50,
    altura: 30,
    gramatura: 357,
    custo: 4.25,
  ),
  CaixaModel(
    cliente: "M.PAULISTA 2",
    comprimento: 460.0,
    largura: 30,
    orelha: 50,
    altura: 120,
    gramatura: 357,
    custo: 4.25,
  ),
  CaixaModel(
    cliente: "M.PAULISTA 3",
    comprimento: 460.0,
    largura: 500,
    orelha: 50,
    altura: 250,
    gramatura: 357,
    custo: 4.25,
  ),
];

class _CompararCaixaPageState extends State<CompararCaixaPage> {
  double errorLevel = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SuggestionsDefault(),
        Slider(
          onChanged: (double value) {
            setState(() => errorLevel = value);
          },
          value: errorLevel,
          min: 0,
          max: 300,
          divisions: 300,
          label: "Error: ${errorLevel.toInt()} cm",
        ),
        Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: caixas.length,
            itemBuilder: (BuildContext context, int index) {
              return CardCompararCaixa(
                caixa: caixas[index],
                procuraCaixa: CaixaModel(
                  cliente: "teste",
                  comprimento: 50,
                  altura: 50,
                  largura: 50,
                  custo: 50,
                  gramatura: 50,
                  orelha: 30,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
