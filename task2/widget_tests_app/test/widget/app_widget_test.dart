import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_tests_app/main.dart';

void main() {

  testWidgets(
    'Button Tap Test',
        (WidgetTester tester) async {

      await tester.pumpWidget(
        const MyApp(),
      );

      await tester.tap(
        find.byKey(
          const Key("incrementButton"),
        ),
      );

      await tester.pump();

      expect(
        find.text("1"),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Form Validation Test',
        (WidgetTester tester) async {

      await tester.pumpWidget(
        const MyApp(),
      );

      await tester.tap(
        find.byKey(
          const Key("validateButton"),
        ),
      );

      await tester.pump();

      expect(
        find.text("Field Required"),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Enter Text Test',
        (WidgetTester tester) async {

      await tester.pumpWidget(
        const MyApp(),
      );

      await tester.enterText(
        find.byKey(
          const Key("textField"),
        ),
        "Hello",
      );

      expect(
        find.text("Hello"),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Navigation Test',
        (WidgetTester tester) async {

      await tester.pumpWidget(
        const MyApp(),
      );

      await tester.tap(
        find.byKey(
          const Key("navigateButton"),
        ),
      );

      await tester.pumpAndSettle();

      expect(
        find.text("Welcome"),
        findsOneWidget,
      );
    },
  );
}