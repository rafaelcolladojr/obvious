import 'package:flutter/widgets.dart' show EdgeInsets;
import 'package:obvious/src/classes/obvious_edge_insets.dart';

/// A [num] extension that provides a easy-to-access
/// shorthand for creating EdgeInsets
extension ObviousNumEdgeInsets on num {
  /// Returns an [EdgeInsets.all] using the [num]
  /// this getter was called from.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.insetAll
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
  EdgeInsets get insetAll => EdgeInsets.all(toDouble());

  /// Returns an [EdgeInsets.symmetric] using the [num]
  /// this getter was called from as its *horizontal* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.insetHorizontal
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
  EdgeInsets get insetHorizontal =>
      EdgeInsets.symmetric(horizontal: toDouble());

  /// Returns an [EdgeInsets.symmetric] using the [num]
  /// this getter was called from as its *vertical* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.insetVertical
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
  EdgeInsets get insetVertical => EdgeInsets.symmetric(vertical: toDouble());

  /// Returns an [EdgeInsets.only] using the [num]
  /// this getter was called from as its *top* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.insetTop
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
  EdgeInsets get insetTop => EdgeInsets.only(top: toDouble());

  /// Returns an [EdgeInsets.only] using the [num]
  /// this getter was called from as its *left* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.insetLeft
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
  EdgeInsets get insetLeft => EdgeInsets.only(left: toDouble());

  /// Returns an [EdgeInsets.only] using the [num]
  /// this getter was called from as its *bottom* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.insetBottom
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
  EdgeInsets get insetBottom => EdgeInsets.only(bottom: toDouble());

  /// Returns an [EdgeInsets.only] using the [num]
  /// this getter was called from as its *right* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.insetRight
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
  EdgeInsets get insetRight => EdgeInsets.only(right: toDouble());

  /// Returns an [EdgeInsets.only] using the [num]
  /// this getter was called from as all its arguments *except top*.
  /// See [ObviousEdgeInsets.except] for more details
  EdgeInsets get insetExceptTop => ObviousEdgeInsets.except(top: toDouble());

  /// Returns an [EdgeInsets.only] using the [num]
  /// this getter was called from as all its arguments *except left*.
  /// See [ObviousEdgeInsets.except] for more details
  EdgeInsets get insetExceptLeft => ObviousEdgeInsets.except(left: toDouble());

  /// Returns an [EdgeInsets.only] using the [num]
  /// this getter was called from as all its arguments *except bottom*.
  /// See [ObviousEdgeInsets.except] for more details
  EdgeInsets get insetExceptBottom =>
      ObviousEdgeInsets.except(bottom: toDouble());

  /// Returns an [EdgeInsets.only] using the [num]
  /// this getter was called from as all its arguments *except right*.
  /// See [ObviousEdgeInsets.except] for more details
  EdgeInsets get insetExceptRight =>
      ObviousEdgeInsets.except(right: toDouble());
}
