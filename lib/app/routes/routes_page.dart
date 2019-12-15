import 'package:controle_producao/app/pages/compararcaixa/compararcaixa_page.dart';
import 'package:controle_producao/app/pages/cliente/cliente_page.dart';
import 'package:controle_producao/app/pages/producao/producao_page.dart';
import 'package:controle_producao/app/routes/routes_bloc.dart';
import 'package:controle_producao/app/routes/routes_module.dart';
import 'package:flutter/material.dart';

class RoutesPage extends StatefulWidget {
  final String title;
  const RoutesPage({Key key, this.title = "Routes"}) : super(key: key);

  @override
  _RoutesPageState createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage> {
  final pages = <Widget>[ClientePage(), CompararCaixaPage(), ProducaoPage()];

  final buttons = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.supervised_user_circle),
      title: Text('Clientes'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.find_in_page),
      title: Text('Aproveitar'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.business),
      title: Text('Produção'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final bloc = RoutesModule.to.getBloc<RoutesBloc>();
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder(
          stream: bloc.indexOut,
          initialData: 0,
          builder: (context, snapshot) {
            return pages.elementAt(snapshot.data);
          },
        ),
      ),
      bottomNavigationBar: StreamBuilder(
        stream: bloc.indexOut,
        initialData: 0,
        builder: (context, snapshot) {
          return BottomNavigationBar(
            items: buttons,
            currentIndex: snapshot.data,
            selectedItemColor: Colors.blue,
            onTap: (pageSelect) {
              bloc.mudarPagina(pageSelect);
            },
          );
        },
      ),
    );
  }
}
