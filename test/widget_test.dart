import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:elevated_button_demo/main.dart';

void main() {
  testWidgets('ElevatedButton displays and shows SnackBar on tap', (
    WidgetTester tester,
  ) async {
    // Build our widget with MaterialApp and Scaffold
    await tester.pumpWidget(const MyApp());

    // Find the button with text "Click Me"
    final buttonFinder = find.text('Click Me');
    expect(buttonFinder, findsOneWidget);

    // Tap the button
    await tester.tap(buttonFinder);
    await tester.pump(); // Allow SnackBar to animate in

    // Check if the SnackBar is shown
    expect(find.text('Button Pressed!'), findsOneWidget);
  });
}
