import 'package:flutter/material.dart'
    show
        BuildContext,
        ScaffoldMessenger,
        ScaffoldMessengerState,
        SnackBar,
        Widget,
        showDialog;

/// Extension methods on [BuildContext] that expose
/// dialog-related convenience methods.
extension ObviousContextDialogExtension on BuildContext {
  /// Shows a [SnackBar] in the Scaffold associated with
  /// the [BuildContext] this is called from.
  /// See [ScaffoldMessengerState.showSnackBar] for more details.
  void showSnackBar(SnackBar snackBar) =>
      ScaffoldMessenger.of(this).showSnackBar(snackBar);

  /// Shows the provided child [Widget] as a dialog.
  /// See [showDialog] for more details.
  void showNewDialog(Widget child) => showDialog<void>(
        context: this,
        builder: (context) => child,
      );
}
