import 'package:controle_producao/app/routes/routes_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:controle_producao/app/routes/routes_page.dart';

class RoutesModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => RoutesBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => RoutesPage();

  static Inject get to => Inject<RoutesModule>.of();
}
