import 'package:controle_producao/app/components/popUpDefault.dart';
import 'package:controle_producao/app/models/Caixa_model.dart';
import 'package:flutter/material.dart';

class CardClient extends StatefulWidget {
  final int index;
  final List<CaixaModel> data;

  const CardClient({
    Key key,
    @required this.index,
    @required this.data,
  }) : super(key: key);

  @override
  _CardClientState createState() => _CardClientState();
}

class _CardClientState extends State<CardClient>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
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
    var _tapPosition;
    final RenderBox overlay = Overlay.of(context).context.findRenderObject();
    void _storePosition(TapDownDetails details) {
      _tapPosition = details.globalPosition;
    }

    return Container(
      child: GestureDetector(
        onTapDown: _storePosition,
        onLongPress: () {
          print("teste ${widget.index}");
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
        child: AnimationCard(
          animation: animation,
          child: Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            height: animation.value,
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          widget.data.elementAt(widget.index).cliente,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "${widget.data.elementAt(widget.index).custo}",
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
                        child: textoCard(
                            "Altura ${widget.data.elementAt(widget.index).altura}"),
                      ),
                      Expanded(
                        child: textoCard(
                            "Orelha ${widget.data.elementAt(widget.index).orelha}"),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: textoCard(
                            "Gramatura ${widget.data.elementAt(widget.index).gramatura}"),
                      ),
                      Expanded(
                        child: textoCard(
                            "Comprimento ${widget.data.elementAt(widget.index).comprimento}"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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

class AnimationCard extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;
  final sizeTween = Tween<double>(begin: 0, end: 150.0);
  final opacityTween = Tween<double>(begin: 0.0, end: 1.0);

  AnimationCard({Key key, this.child, this.animation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (
        BuildContext context,
        Widget child,
      ) {
        return Opacity(
          opacity: opacityTween.evaluate(animation),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 0),
            height: sizeTween.evaluate(animation).clamp(0.0, 180.0),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
