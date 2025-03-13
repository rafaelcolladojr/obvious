/// A [String] extension that provides useful
/// functionality otherwise not available
extension ObviousStringExtension on String {
  /// Returns *null* if this String's
  /// isEmpty method returns *true*
  String? nullIfEmpty() => isEmpty ? null : this;
}
