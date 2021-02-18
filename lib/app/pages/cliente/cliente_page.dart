import 'package:controle_producao/app/components/CardClient.dart';
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
          return CardClient(
            data: data,
            index: i,
          );
        },
      ),
    );
  }
}
