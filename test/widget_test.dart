import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:practice/main.dart';
import 'package:practice/src/routing/app_route_config.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Create a single instance of MyAppRouter
    final MyAppRouter myAppRouter = MyAppRouter();

    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(router: myAppRouter.router));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
