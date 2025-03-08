/// A [num] extension that provides a easy-to-access
/// shorthand for creating Durations
extension ObviousNumDurationExtension on num {
  /// Returns an [Duration] with *milliseconds* set to the [num]
  /// this getter was called from.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.ms
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// Duration(milliseconds: 12)
  /// ```
  ///
  /// {@end-tool}
  Duration get ms => Duration(milliseconds: toInt());

  /// Returns an [Duration] with *seconds* set to the [num]
  /// this getter was called from.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.seconds
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// Duration(seconds: 12)
  /// ```
  ///
  /// {@end-tool}
  Duration get seconds => Duration(seconds: toInt());

  /// Returns an [Duration] with *minutes* set to the [num]
  /// this getter was called from.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.minutes
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// Duration(minutes: 12)
  /// ```
  ///
  /// {@end-tool}
  Duration get minutes => Duration(minutes: toInt());

  /// Returns an [Duration] with *hours* set to the [num]
  /// this getter was called from.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.hours
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// Duration(hours: 12)
  /// ```
  ///
  /// {@end-tool}
  Duration get hours => Duration(hours: toInt());

  /// Returns an [Duration] with *days* set to the [num]
  /// this getter was called from.
  ///
  /// {@tool snippet}
  ///
  /// example:
  /// ```dart
  /// 12.days
  /// ```
  ///
  /// is synonimous with:
  ///
  /// ```dart
  /// Duration(days: 12)
  /// ```
  ///
  /// {@end-tool}
  Duration get days => Duration(days: toInt());
}
