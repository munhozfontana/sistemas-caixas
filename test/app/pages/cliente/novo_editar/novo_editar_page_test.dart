import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:controle_producao/app/pages/cliente/novo_editar/novo_editar_page.dart';

main() {
  testWidgets('NovoEditarPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(NovoEditarPage(title: 'NovoEditar')));
    final titleFinder = find.text('NovoEditar');
    expect(titleFinder, findsOneWidget);
  });
}
