import 'package:flutter/widgets.dart' show SizedBox;

///
extension ObviousNumExtension on num {
  /// Returns an [SizedBox] using the [num]
  /// this getter was called from as its *height* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.heightBox
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// SizedBox(height: 12)
  /// ```
  ///
  /// {@end-tool}
  SizedBox get heightBox => SizedBox(height: toDouble());

  /// Returns an [SizedBox] using the [num]
  /// this getter was called from as its *width* argument.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.widthBox
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// SizedBox(width: 12)
  /// ```
  ///
  /// {@end-tool}
  SizedBox get widthBox => SizedBox(width: toDouble());
}
