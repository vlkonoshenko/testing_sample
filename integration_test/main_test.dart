import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:provider_shopper/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Enter data and login', (tester) async {
    app.main();
    // Await app running
    await tester.pumpAndSettle(Duration(seconds: 2));
    // Enter username
    await tester.enterText(
        find.widgetWithText(TextFormField, 'Username'), 'text');
    // Await just for demonstration
    await tester.pumpAndSettle(Duration(seconds: 1));

    await tester.enterText(
        find.widgetWithText(TextFormField, 'Password'), 'password');
    // Await just for demonstration
    await tester.pumpAndSettle(Duration(seconds: 1));

    await tester.tap(find.text('ENTER'));
    // Await just for demonstration
    await tester.pumpAndSettle(Duration(seconds: 2));
  });
}
