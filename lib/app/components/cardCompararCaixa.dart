import 'dart:ffi';

import 'package:controle_producao/app/components/cardClient.dart';
import 'package:controle_producao/app/models/Caixa_model.dart';
import 'package:flutter/material.dart';

class CardCompararCaixa extends StatefulWidget {
  final CaixaModel caixa;
  final CaixaModel procuraCaixa;
  final int nivelDeErro;

  CardCompararCaixa({
    Key key,
    @required this.caixa,
    @required this.procuraCaixa,
    this.nivelDeErro = 50,
  }) : super(key: key);

  @override
  _CardCompararCaixaState createState() => _CardCompararCaixaState();
}

class _CardCompararCaixaState extends State<CardCompararCaixa>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  Animation<double> animation;

  bool comparaCaixas(CaixaModel listaCaixa, CaixaModel procurarCaixa) {
    if (compararMedidas(listaCaixa.largura, procurarCaixa.largura) &&
        compararMedidas(listaCaixa.altura, procurarCaixa.altura) &&
        compararMedidas(listaCaixa.comprimento, procurarCaixa.comprimento)) {
      return true;
    }
    return false;
  }

  bool compararMedidas(double medida1, double medida2) {
    if (medida1 - medida2 <= widget.nivelDeErro) {
      return true;
    }
    return false;
  }

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Cubic(0.86, 0.0, 0.07, 0.5),
    );

    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimationCard(
      animation: animation,
      child: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(10),
        height: 124,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.black87,
          gradient: LinearGradient(
            colors: comparaCaixas(widget.caixa, widget.procuraCaixa)
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Text(
                      widget.caixa?.cliente,
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
                                color: compararMedidas(widget.caixa.altura,
                                        widget.procuraCaixa.altura)
                                    ? Colors.white
                                    : Colors.red,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              widget.caixa?.altura.toString(),
                              style: TextStyle(
                                color: compararMedidas(widget.caixa.altura,
                                        widget.procuraCaixa.altura)
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
                                color: compararMedidas(widget.caixa.largura,
                                        widget.procuraCaixa.largura)
                                    ? Colors.white
                                    : Colors.red,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              widget.caixa?.largura.toString(),
                              style: TextStyle(
                                color: compararMedidas(widget.caixa.largura,
                                        widget.procuraCaixa.largura)
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
                                color: compararMedidas(widget.caixa.comprimento,
                                        widget.procuraCaixa.comprimento)
                                    ? Colors.white
                                    : Colors.red,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              widget.caixa?.comprimento.toString(),
                              style: TextStyle(
                                color: compararMedidas(widget.caixa.comprimento,
                                        widget.procuraCaixa.comprimento)
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
        ),
      ),
    );
  }
}
