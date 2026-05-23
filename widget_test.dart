// =============================================================================
// CareSync — Widget Tests
// Basic smoke test to ensure the app launches without errors.
// =============================================================================

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:caresync/main.dart';

void main() {
  testWidgets('CareSync app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const CareSyncApp());

    // Verify the app title is present on the login screen
    expect(find.text('CareSync'), findsOneWidget);
  });
}
