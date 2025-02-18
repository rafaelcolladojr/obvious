import 'package:flutter/widgets.dart';

/// An widget that wraps its child in an
/// [Expanded] if enabled is set to true.
class ObviousConditionalExpanded extends StatelessWidget {
  /// An widget that wraps its child in an
  /// [Expanded] if enabled is set to true.
  const ObviousConditionalExpanded({
    required this.child,
    this.enabled = false,
    this.flex = 1,
    super.key,
  });

  /// Whether this widget's child should be wrapped in an [Expanded]
  final bool enabled;

  /// An widget that wraps its child in an
  /// [Expanded] if enabled is set to true.
  final int flex;

  /// An widget that wraps its child in an
  /// [Expanded] if enabled is set to true.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (enabled) {
      return Expanded(flex: flex, child: child);
    }
    return child;
  }
}
