import 'dart:ffi';

import 'package:controle_producao/app/models/Caixa_model.dart';
import 'package:flutter/material.dart';

class CardCompararCaixa extends StatelessWidget {
  final CaixaModel caixa;
  final CaixaModel procuraCaixa;
  final int nivelDeErro;

  const CardCompararCaixa({
    Key key,
    @required this.caixa,
    @required this.procuraCaixa,
    this.nivelDeErro = 50,
  }) : super(key: key);

  bool comparaCaixas(CaixaModel listaCaixa, CaixaModel procurarCaixa) {
    if (compararMedidas(listaCaixa.largura, procurarCaixa.largura) &&
        compararMedidas(listaCaixa.altura, procurarCaixa.altura) &&
        compararMedidas(listaCaixa.comprimento, procurarCaixa.comprimento)) {
      return true;
    }
    return false;
  }

  bool compararMedidas(double medida1, double medida2) {
    if (medida1 - medida2 <= nivelDeErro) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      height: 124,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.black87,
        gradient: LinearGradient(
          colors: comparaCaixas(caixa, procuraCaixa)
              ? [
                  Colors.blue,
                  Colors.green,
                ]
              : [
                  Colors.black54,
                  Colors.black87,
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
                  caixa?.cliente,
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
                            color: compararMedidas(
                                    caixa.altura, procuraCaixa.altura)
                                ? Colors.white
                                : Colors.red,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          caixa?.altura.toString(),
                          style: TextStyle(
                            color: compararMedidas(
                                    caixa.altura, procuraCaixa.altura)
                                ? Colors.white
                                : Colors.red,
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
                            color: compararMedidas(
                                    caixa.largura, procuraCaixa.largura)
                                ? Colors.white
                                : Colors.red,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          caixa?.largura.toString(),
                          style: TextStyle(
                            color: compararMedidas(
                                    caixa.largura, procuraCaixa.largura)
                                ? Colors.white
                                : Colors.red,
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
                            color: compararMedidas(
                                    caixa.comprimento, procuraCaixa.comprimento)
                                ? Colors.white
                                : Colors.red,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          caixa?.comprimento.toString(),
                          style: TextStyle(
                            color: compararMedidas(
                                    caixa.comprimento, procuraCaixa.comprimento)
                                ? Colors.white
                                : Colors.red,
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
  }
}
