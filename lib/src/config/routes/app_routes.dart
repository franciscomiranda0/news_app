import 'package:flutter/material.dart';

abstract class AppRoutes {
  static const String home = '';

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return _buildRoute(Container());
      default:
        return _buildRoute(Container());
    }
  }

  static Route _buildRoute(Widget page) =>
      MaterialPageRoute(builder: (_) => page);
}
