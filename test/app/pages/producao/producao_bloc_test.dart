import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:controle_producao/app/pages/producao/producao_bloc.dart';
import 'package:controle_producao/app/pages/producao/producao_module.dart';

void main() {
  initModule(ProducaoModule());
  ProducaoBloc bloc;

  setUp(() {
    bloc = ProducaoModule.to.bloc<ProducaoBloc>();
  });

  group('ProducaoBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<ProducaoBloc>());
    });
  });
}
