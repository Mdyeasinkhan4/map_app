import 'package:flutter_test/flutter_test.dart';
import 'package:map_app/main.dart';
import 'package:map_app/map_screen.dart';

void main() {
  testWidgets('Map screen load test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const RealTimeMapApp());

    // Verify that the MapScreen is present.
    expect(find.byType(MapScreen), findsOneWidget);
  });
}
