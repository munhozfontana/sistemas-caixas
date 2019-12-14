import 'package:controle_producao/app/components/popUpDefault.dart';
import 'package:controle_producao/app/models/Caixa_model.dart';
import 'package:flutter/material.dart';

class CardClient extends StatelessWidget {
  final int index;
  final List<CaixaModel> data;

  const CardClient({
    Key key,
    @required this.index,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _tapPosition;
    final RenderBox overlay = Overlay.of(context).context.findRenderObject();
    void _storePosition(TapDownDetails details) {
      _tapPosition = details.globalPosition;
    }

    return Container(
      child: GestureDetector(
        onTapDown: _storePosition,
        onLongPress: () {
          print("teste $index");
          showMenu(
            items: [
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.harder,
                child: Text('Editar'),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.smarter,
                child: Text('Remover'),
              ),
            ],
            context: context,
            position: RelativeRect.fromRect(
                _tapPosition & Size(40, 40), // smaller rect, the touch area
                Offset.zero & overlay.size // Bigger rect, the entire screen
                ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(10),
          height: 124,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.black87,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.deepPurpleAccent,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(
                      data.elementAt(index).cliente,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "${data.elementAt(index).custo}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: textoCard("Altura ${data.elementAt(index).altura}"),
                  ),
                  Expanded(
                    child: textoCard("Orelha ${data.elementAt(index).orelha}"),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: textoCard(
                        "Gramatura ${data.elementAt(index).gramatura}"),
                  ),
                  Expanded(
                    child: textoCard(
                        "Comprimento ${data.elementAt(index).comprimento}"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container textoCard(String texto) {
    return Container(
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
        ),
      ),
    );
  }
}
