import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:controle_producao/app/pages/compararcaixa/compararcaixa_bloc.dart';
import 'package:controle_producao/app/pages/compararcaixa/compararcaixa_page.dart';
import 'package:flutter/cupertino.dart';

class CompararCaixaModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => CompararCaixaBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => CompararCaixaPage();

  static Inject get to => Inject<CompararCaixaModule>.of();
}
