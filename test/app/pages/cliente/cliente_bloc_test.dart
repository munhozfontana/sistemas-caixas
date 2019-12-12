import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:controle_producao/app/pages/cliente/cliente_bloc.dart';
import 'package:controle_producao/app/pages/cliente/cliente_module.dart';

void main() {
  initModule(ClienteModule());
  ClienteBloc bloc;

  setUp(() {
    bloc = ClienteModule.to.bloc<ClienteBloc>();
  });

  group('ClienteBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<ClienteBloc>());
    });
  });
}
