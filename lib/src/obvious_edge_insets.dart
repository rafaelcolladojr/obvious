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
  ObviousEdgeInsets.except({
    double? left,
    double? top,
    double? right,
    double? bottom,
  })  : assert(_validateParams(left, top, right, bottom), ''),
        super.fromLTRB(
          top ?? right ?? bottom ?? 0, // left
          left ?? right ?? bottom ?? 0, // top
          left ?? top ?? bottom ?? 0, // right
          left ?? top ?? right ?? 0, // bottom
        );

  static bool _validateParams(
    double? left,
    double? top,
    double? bottom,
    double? right,
  ) {
    final valid = (left == null ? 0 : 1) +
            (top == null ? 0 : 1) +
            (right == null ? 0 : 1) +
            (bottom == null ? 0 : 1) ==
        1;
    if (!valid) {
      throw ArgumentError(
        'ObviousEdgeInsets.except must only accept one argument.',
      );
    }
    return valid;
  }
}

/// A [num] extension that provides a easy-to-access
/// shorthand for creating padding EdgeInsets
extension ObviousNumEdgeInsets on num {
  /// Returns an [EdgeInsets.all] using this [num]
  /// this getter was called from.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.paddingAll
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// EdgeInsets.all(12)
  /// ```
  ///
  /// {@end-tool}
  /// If more than one is provided, an [AssertionError] is thrown.
  EdgeInsets get paddingAll => EdgeInsets.all(toDouble());

  /// Returns an [EdgeInsets.symmetric] using this [num]
  /// this getter was called from as its *horizontal* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.paddingHorizontal
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// EdgeInsets.symmetric(horizontal: 12)
  /// ```
  ///
  /// {@end-tool}
  /// If more than one is provided, an [AssertionError] is thrown.
  EdgeInsets get paddingHorizontal =>
      EdgeInsets.symmetric(horizontal: toDouble());

  /// Returns an [EdgeInsets.symmetric] using this [num]
  /// this getter was called from as its *vertical* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.paddingVertical
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// EdgeInsets.symmetric(vertical: 12)
  /// ```
  ///
  /// {@end-tool}
  /// If more than one is provided, an [AssertionError] is thrown.
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: toDouble());

  /// Returns an [EdgeInsets.only] using this [num]
  /// this getter was called from as its *top* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.paddingTop
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// EdgeInsets.only(top: 12)
  /// ```
  ///
  /// {@end-tool}
  /// If more than one is provided, an [AssertionError] is thrown.
  EdgeInsets get paddingTop => EdgeInsets.only(top: toDouble());

  /// Returns an [EdgeInsets.only] using this [num]
  /// this getter was called from as its *left* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.paddingLeft
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// EdgeInsets.only(left: 12)
  /// ```
  ///
  /// {@end-tool}
  /// If more than one is provided, an [AssertionError] is thrown.
  EdgeInsets get paddingLeft => EdgeInsets.only(left: toDouble());

  /// Returns an [EdgeInsets.only] using this [num]
  /// this getter was called from as its *bottom* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.paddingBottom
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// EdgeInsets.only(bottom: 12)
  /// ```
  ///
  /// {@end-tool}
  /// If more than one is provided, an [AssertionError] is thrown.
  EdgeInsets get paddingBottom => EdgeInsets.only(bottom: toDouble());

  /// Returns an [EdgeInsets.only] using this [num]
  /// this getter was called from as its *right* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.paddingRight
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// EdgeInsets.only(right: 12)
  /// ```
  ///
  /// {@end-tool}
  /// If more than one is provided, an [AssertionError] is thrown.
  EdgeInsets get paddingRight => EdgeInsets.only(right: toDouble());

  /// Returns an [EdgeInsets.only] using this [num]
  /// this getter was called from as all its arguments *except top*.
  /// See [ObviousEdgeInsets.except] for more details
  EdgeInsets get paddingExceptTop => ObviousEdgeInsets.except(top: toDouble());

  /// Returns an [EdgeInsets.only] using this [num]
  /// this getter was called from as all its arguments *except left*.
  /// See [ObviousEdgeInsets.except] for more details
  EdgeInsets get paddingExceptLeft =>
      ObviousEdgeInsets.except(left: toDouble());

  /// Returns an [EdgeInsets.only] using this [num]
  /// this getter was called from as all its arguments *except bottom*.
  /// See [ObviousEdgeInsets.except] for more details
  EdgeInsets get paddingExceptBottom =>
      ObviousEdgeInsets.except(bottom: toDouble());

  /// Returns an [EdgeInsets.only] using this [num]
  /// this getter was called from as all its arguments *except right*.
  /// See [ObviousEdgeInsets.except] for more details
  EdgeInsets get paddingExceptRight =>
      ObviousEdgeInsets.except(right: toDouble());
}
