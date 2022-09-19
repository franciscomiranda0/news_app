import 'package:flutter/material.dart';

abstract class AppRoutes {
  static const String home = '';

  static Route onGenerateRoute(RouteSettings settings) {
    final Widget page;

    switch (settings.name) {
      case home:
        page = Container();
        break;
      default:
        page = Container();
    }
    return _buildRoute(page);
  }

  static Route _buildRoute(Widget page) =>
      MaterialPageRoute(builder: (_) => page);
}
