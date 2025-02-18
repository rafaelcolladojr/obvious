// ignore_for_file: prefer_const_constructors

import 'package:flutter/rendering.dart' show EdgeInsets;
import 'package:flutter/widgets.dart' show Placeholder;
import 'package:flutter_test/flutter_test.dart';
import 'package:obvious/obvious.dart';

void main() {
  group('ObviousEdgeInsets', () {
    test('sets all other sides to provided value', () {
      final obvious = ObviousEdgeInsets.except(bottom: 8);
      final regular = EdgeInsets.only(left: 8, top: 8, right: 8);
      expect(obvious, equals(regular));
    });

    test('can only accept one param', () {
      expect(
        () => ObviousEdgeInsets.except(top: 8, bottom: 8),
        throwsArgumentError,
      );
    });
  });

  group('ObviousConditionalExpanded', () {
    testWidgets(
      'Returns Expanded when enabled',
      (tester) async {
        await tester
            .pumpWidget(ObviousConditionalExpanded(child: Placeholder()));
      },
    );
  });
}
