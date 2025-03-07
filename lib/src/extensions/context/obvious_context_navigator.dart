import 'package:flutter/material.dart'
    show
        BuildContext,
        MaterialPageRoute,
        Navigator,
        NavigatorState,
        Route,
        Widget;

/// Extension methods on [BuildContext] that provides
/// various navigator 1.0 convenience methods.
extension ContextExtension on BuildContext {
  /// Pushes the provided screen widget as a [MaterialPageRoute]
  /// using the context object this method is called from.
  /// See [NavigatorState.push] for more details.
  void push<T>(Widget screen) => Navigator.of(this).push<T>(
        MaterialPageRoute(builder: (context) => screen),
      );

  /// Pushes the provided widget as a [MaterialPageRoute]
  /// while replacing the current route using the context
  /// object this method is called from.
  /// See [NavigatorState.pushReplacement] for more details.
  void pushReplacement<T>(Widget widget) =>
      Navigator.of(this).pushReplacement<T, void>(
        MaterialPageRoute(builder: (context) => widget),
      );

  /// Pushes the predefined route associated with the provided [name]
  /// using the context object this method is called from.
  /// See [NavigatorState.pushNamed] for more details.
  void pushNamed(String name) => Navigator.of(this).pushNamed(name);

  /// Pushes the predefined route associated with the provided [name]
  /// while replacing the current route using the context object
  /// this method is called from.
  /// See [NavigatorState.pushReplacementNamed] for more details.
  void pushReplacementNamed(String name) =>
      Navigator.of(this).pushReplacementNamed(name);

  /// Pushes the provided widget as a [MaterialPageRoute]
  /// and removes all previous routes until the [predicate] returns true
  /// using the context object this method is called from.
  /// See [NavigatorState.pushAndRemoveUntil] for more details.
  void pushAndRemoveUntil<T>(
    Widget className,
    bool Function(Route<dynamic>) predicate,
  ) =>
      Navigator.of(this).pushAndRemoveUntil<T>(
        MaterialPageRoute(
          builder: (context) => className,
        ),
        predicate,
      );

  /// Pushes the predefined route associated with the provided [name]
  /// and removes all previous routes until the [predicate] returns true
  /// using the context object this method is called from.
  /// See [NavigatorState.pushNamedAndRemoveUntil] for more details.
  void pushNamedAndRemoveUntil(
    String name,
    bool Function(Route<dynamic>) predicate,
  ) =>
      Navigator.of(this).pushNamedAndRemoveUntil(
        name,
        predicate,
      );

  /// Pops the top-most route off the Navigator associated with
  /// the context object this method is called from.
  /// See [NavigatorState.pop] for more details.
  void pop() => Navigator.of(this).pop();

  /// Consults the current route's [Route.popDisposition] method, and acts
  /// accordingly, potentially popping the route as a result; returns whether
  /// the pop request should be considered handled.
  /// See [NavigatorState.maybePop] for more details.
  Future<bool> maybePop() => Navigator.of(this).maybePop();

  /// Pop the current route off the navigator and push a named route in its
  /// place.
  /// See [NavigatorState.popAndPushNamed] for more details.
  void popAndPushNamed(String path) => Navigator.of(this).popAndPushNamed(path);
}
