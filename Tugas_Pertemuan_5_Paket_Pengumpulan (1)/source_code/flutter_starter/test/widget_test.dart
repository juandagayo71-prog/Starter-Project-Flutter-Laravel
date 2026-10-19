import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/app/app.dart';

void main() {
  testWidgets('menampilkan dashboard starter', (tester) async {
    await tester.pumpWidget(const StarterApp());
    expect(find.text('Dashboard'), findsOneWidget);
  });
}
