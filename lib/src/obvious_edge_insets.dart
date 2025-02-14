import 'package:flutter/rendering.dart' show EdgeInsets;

/// An [EdgeInsets] subclass that features some extra useful
/// constructors not available in its parent class.
class ObviousEdgeInsets extends EdgeInsets {
  /// Returns an [EdgeInsets] where all but the specified side are
  /// set to the provided value.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// ObviousEdgeInsets.except(bottom: 8)
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// EdgeInsets.only(left: 8, top: 8, right: 8)
  /// ```
  ///
  /// {@end-tool}
  /// If more than one is provided, an [AssertionError] is thrown.
  const ObviousEdgeInsets.except({
    double? left,
    double? top,
    double? right,
    double? bottom,
  })  : assert(
          (left == null ? 0 : 1) +
                  (top == null ? 0 : 1) +
                  (right == null ? 0 : 1) +
                  (bottom == null ? 0 : 1) ==
              1,
          'ObviousEdgeInsets.except must only accept one argument.',
        ),
        super.fromLTRB(
          top ?? right ?? bottom ?? 0, // left
          left ?? right ?? bottom ?? 0, // top
          left ?? top ?? bottom ?? 0, // right
          left ?? top ?? right ?? 0, // bottom
        );
}
