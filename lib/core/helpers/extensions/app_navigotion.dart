import 'package:flutter/material.dart';

extension AppNavigation on BuildContext {
  // Simplified pushNamed method
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  // Simplified pushReplacementNamed method
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  }

  // Simplified pushNamedAndRemoveUntil method
  Future<dynamic> pushNamedAndRemoveUntil(String routeName, RoutePredicate predicate, {Object? arguments}) {
    return Navigator.pushNamedAndRemoveUntil(this, routeName, predicate, arguments: arguments);
  }

  // Simplified pop method
  void pop([Object? result]) {
    return Navigator.pop(this, result);
  }
}