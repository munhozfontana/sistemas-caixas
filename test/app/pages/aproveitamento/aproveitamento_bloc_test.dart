import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:controle_producao/app/pages/compararcaixa/compararcaixa_bloc.dart';
import 'package:controle_producao/app/pages/compararcaixa/compararcaixa_module.dart';

void main() {
  initModule(CompararCaixaModule());
  CompararCaixaBloc bloc;

  setUp(() {
    bloc = CompararCaixaModule.to.bloc<CompararCaixaBloc>();
  });

  group('AproveitamentoBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<CompararCaixaBloc>());
    });
  });
}
