import 'package:controle_producao/app/pages/producao/producao_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:controle_producao/app/pages/producao/producao_page.dart';

class ProducaoModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ProducaoBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => ProducaoPage();

  static Inject get to => Inject<ProducaoModule>.of();
}
