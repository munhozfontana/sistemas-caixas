import 'package:controle_producao/app/pages/cliente/novo_editar/novo_editar_bloc.dart';
import 'package:controle_producao/app/pages/cliente/cliente_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:controle_producao/app/pages/cliente/cliente_page.dart';

class ClienteModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => NovoEditarBloc()),
        Bloc((i) => ClienteBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => ClientePage();

  static Inject get to => Inject<ClienteModule>.of();
}
