import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:controle_producao/app/pages/aproveitamento/aproveitamento_bloc.dart';
import 'package:controle_producao/app/pages/aproveitamento/aproveitamento_module.dart';

void main() {
  initModule(AproveitamentoModule());
  AproveitamentoBloc bloc;

  setUp(() {
    bloc = AproveitamentoModule.to.bloc<AproveitamentoBloc>();
  });

  group('AproveitamentoBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<AproveitamentoBloc>());
    });
  });
}
