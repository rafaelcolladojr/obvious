/// A [String] extension that provides useful
/// functionality otherwise not available
extension ObviousStringExtension on String {
  /// Returns *null* if this String's
  /// isEmpty method returns *true*
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
  String? nullIfEmpty() => isEmpty ? null : this;
}
