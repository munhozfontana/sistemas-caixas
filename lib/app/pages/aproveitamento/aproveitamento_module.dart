import 'package:controle_producao/app/pages/aproveitamento/aproveitamento_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:controle_producao/app/pages/aproveitamento/aproveitamento_page.dart';

class AproveitamentoModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AproveitamentoBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AproveitamentoPage();

  static Inject get to => Inject<AproveitamentoModule>.of();
}
