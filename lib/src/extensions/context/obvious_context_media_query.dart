import 'package:flutter/widgets.dart' show BuildContext, EdgeInsets, MediaQuery;

/// Extension methods on [BuildContext] for accessing different
/// [MediaQuery] information
extension ObviousContextMediaQueryExtension on BuildContext {
  /// Returns the screen height using the context object
  /// this method is called from.
  /// See [MediaQuery.sizeOf] for more details.
  double get screenHeight => MediaQuery.sizeOf(this).height;

  /// Returns the screen width using the context object
  /// this method is called from.
  /// See [MediaQuery.sizeOf] for more details.
  double get screenWidth => MediaQuery.sizeOf(this).width;

  /// Returns the screen aspect ratio using the context object
  /// this method is called from.
  /// See [MediaQuery.sizeOf] for more details.
  double get aspectRatio => MediaQuery.sizeOf(this).aspectRatio;

  /// Returns whether this view is within the standard mobile width
  /// range (< 650 pixels)
  bool get isMobile => MediaQuery.sizeOf(this).width < 650;

  /// Returns the current screen padding using the context object
  /// this method is called from.
  /// See [MediaQuery.paddingOf] for more details.
  EdgeInsets get padding => MediaQuery.paddingOf(this);

  /// Returns the current view padding using the context object
  /// this method is called from.
  /// See [MediaQuery.viewPaddingOf] for more details.
  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);

  /// Returns the current view insets using [MediaQuery.sizeOf]
  /// on the context object this method is called from
  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);

  /// Returns whether this view is within the standard tablet width
  /// range (650 pixels <= width <= 1024 pixels)
  bool get isTablet =>
      MediaQuery.sizeOf(this).width <= 1024 &&
      MediaQuery.sizeOf(this).width >= 650;

  /// Returns whether this view is within the standard desktop width
  /// range (> 1024 pixels)
  bool get isDesktop => MediaQuery.sizeOf(this).width > 1024;
}
