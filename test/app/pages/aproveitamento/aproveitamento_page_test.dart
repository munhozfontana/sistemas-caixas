import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:controle_producao/app/pages/aproveitamento/aproveitamento_page.dart';

main() {
  testWidgets('AproveitamentoPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(AproveitamentoPage(title: 'Aproveitamento')));
    final titleFinder = find.text('Aproveitamento');
    expect(titleFinder, findsOneWidget);
  });
}
