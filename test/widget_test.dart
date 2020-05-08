import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });
}
