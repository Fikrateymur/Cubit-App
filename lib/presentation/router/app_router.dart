import 'package:cubit_example/presentation/screens/bottom_navigation_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const BottomNavigationPage());

      default:
        return MaterialPageRoute(builder: (_) => const BottomNavigationPage());
    }
  }
}
