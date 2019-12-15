import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:controle_producao/app/pages/producao/producao_page.dart';

main() {
  testWidgets('ProducaoPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(ProducaoPage(title: 'Producao')));
    final titleFinder = find.text('Producao');
    expect(titleFinder, findsOneWidget);
  });
}
