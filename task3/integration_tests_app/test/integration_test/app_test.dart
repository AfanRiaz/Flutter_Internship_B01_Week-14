import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter/material.dart';
import 'package:integration_tests_app/main.dart';

void main() {

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'Complete App Flow Test',
        (tester) async {

      await tester.pumpWidget(
        const MyApp(),
      );

      // LOGIN FLOW

      await tester.enterText(
        find.byKey(const Key("loginEmail")),
        "test@gmail.com",
      );

      await tester.enterText(
        find.byKey(const Key("loginPassword")),
        "123456",
      );

      await tester.tap(
        find.byKey(const Key("loginButton")),
      );

      await tester.pumpAndSettle();

      expect(
        find.text("Products"),
        findsOneWidget,
      );

      // CART FLOW

      await tester.tap(
        find.byKey(const Key("addCart")),
      );

      await tester.pumpAndSettle();

      expect(
        find.text("Cart: 1"),
        findsOneWidget,
      );

      // CHECKOUT FLOW

      await tester.tap(
        find.byKey(const Key("checkout")),
      );

      await tester.pumpAndSettle();

      expect(
        find.byKey(
          const Key("successText"),
        ),
        findsOneWidget,
      );
    },
  );
}