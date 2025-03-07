import 'package:flutter/material.dart' show Theme, ThemeData;
import 'package:flutter/widgets.dart' show BuildContext;

/// Extension methods on [BuildContext] that provides
/// various material theme convenience methods.
extension ObviousContextThemeExtension on BuildContext {
  /// Returns the [ThemeData] associated with the
  /// context objection this method is called from.
  ThemeData get theme => Theme.of(this);
}
