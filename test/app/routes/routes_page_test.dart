import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:controle_producao/app/routes/routes_page.dart';

main() {
  testWidgets('RoutesPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(RoutesPage(title: 'Routes')));
    final titleFinder = find.text('Routes');
    expect(titleFinder, findsOneWidget);
  });
}
