import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:controle_producao/app/pages/cliente/novo_editar/novo_editar_bloc.dart';
import 'package:controle_producao/app/pages/cliente/cliente_module.dart';

void main() {
  initModule(ClienteModule());
  NovoEditarBloc bloc;

  setUp(() {
    bloc = ClienteModule.to.bloc<NovoEditarBloc>();
  });

  group('NovoEditarBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<NovoEditarBloc>());
    });
  });
}
