// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/cupertino.dart';

import 'package:demo/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Home Content Widget tests', (WidgetTester tester) async {
    await tester.pumpWidget(DemoApp());

    expect(find.text('Digite seu nome:'), findsOneWidget);
    await tester.enterText(find.byType(CupertinoTextField), 'João');
    await tester.pump();

    await tester.tap(find.text("Ir!"));
    await tester.pumpAndSettle();

    expect(find.text('Oi, João!!'), findsOneWidget);
  });
}