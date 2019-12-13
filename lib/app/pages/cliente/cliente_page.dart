import 'package:controle_producao/app/models/Caixa_model.dart';
import 'package:controle_producao/app/pages/cliente/novo_editar/novo_editar_page.dart';
import 'package:flutter/material.dart';

class ClientePage extends StatefulWidget {
  final String title;

  const ClientePage({Key key, this.title = "Clientes"}) : super(key: key);

  @override
  _ClientePageState createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
  var data = <CaixaModel>[];

  @override
  void initState() {
    super.initState();

    data.add(
      CaixaModel(
        cliente: "M.PAULISTA",
        comprimento: 460.0,
        largura: 1000,
        orelha: 50,
        altura: 100,
        gramatura: 357,
        custo: 4.25,
      ),
    );
    data.add(
      CaixaModel(
        cliente: "M.PAULISTA",
        comprimento: 460.0,
        largura: 1000,
        orelha: 50,
        altura: 100,
        gramatura: 357,
        custo: 4.25,
      ),
    );
    data.add(
      CaixaModel(
        cliente: "M.PAULISTA",
        comprimento: 460.0,
        largura: 1000,
        orelha: 50,
        altura: 100,
        gramatura: 357,
        custo: 4.25,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Clientes'),
        elevation: 6,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 15),
            icon: Icon(Icons.add),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NovoEditarPage()));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              print("teste $i");
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
                          data.elementAt(i).cliente,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "${data.elementAt(i).custo}",
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
                        child: textoCard("Altura ${data.elementAt(i).altura}"),
                      ),
                      Expanded(
                        child: textoCard("Orelha ${data.elementAt(i).orelha}"),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: textoCard(
                            "Gramatura ${data.elementAt(i).gramatura}"),
                      ),
                      Expanded(
                        child: textoCard(
                            "Comprimento ${data.elementAt(i).comprimento}"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
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
