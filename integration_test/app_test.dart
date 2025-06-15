import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_project/main.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('FAB를 탭하면 증가해야함', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.text('0'), findsOneWidget);

      final fab = find.byTooltip('increment');

      await tester.tap(fab);
      await tester.pump();

      expect(find.text('1'), findsOneWidget);
    });
  });
}
