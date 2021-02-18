import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:controle_producao/app/pages/cliente/cliente_page.dart';

main() {
  testWidgets('ClientePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ClientePage(title: 'Cliente')));
    final titleFinder = find.text('Cliente');
    expect(titleFinder, findsOneWidget);
  });
}
