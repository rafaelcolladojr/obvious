import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:obvious/obvious.dart';

import '../../helpers/pump_app.dart';

void main() {
  group('ObviousConditionalExpanded', () {
    testWidgets(
      'Returns Expanded when enabled',
      (tester) async {
        await tester.pumpApp(
          const Column(
            children: [
              ObviousConditionalExpanded(
                enabled: true,
                child: Placeholder(),
              ),
            ],
          ),
        );
        expect(find.byType(Expanded), findsOneWidget);
      },
    );

    testWidgets(
      "Doesn't return Expanded when disabled",
      (tester) async {
        await tester.pumpApp(
          const Column(
            children: [
              ObviousConditionalExpanded(
                child: Placeholder(),
              ),
            ],
          ),
        );
        expect(find.byType(Expanded), findsNothing);
      },
    );
  });
}
