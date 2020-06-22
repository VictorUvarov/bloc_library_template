// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:provider_immutable_state/core/constants/widget_keys.dart';
import 'package:provider_immutable_state/locator.dart';
import 'package:provider_immutable_state/main.dart';

void main() {
  setUp(() {
    setupLocator();
  });

  testWidgets('Home View starts loading then loads',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify we start in loading state
    expect(find.byKey(WidgetKeys.loading), findsOneWidget);
    expect(find.byKey(WidgetKeys.loaded), findsNothing);

    // Wait for view to finish loading
    await tester.tap(find.byKey(WidgetKeys.refresh_button));
    await tester.pumpAndSettle();

    // Verify we end in loaded state
    expect(find.byKey(WidgetKeys.loading), findsNothing);
    expect(find.byKey(WidgetKeys.loaded), findsOneWidget);
  });
}
