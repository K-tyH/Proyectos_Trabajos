import 'package:flutter/material.dart';

import '../screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'proceso': (BuildContext context) => const ProcesoScreen(),
    'error': (BuildContext context) => const ErrorScreen(),
    'honu': (BuildContext context) => const HonuScreen(),
  };

  // ignore: non_constant_identifier_names
  static Route<dynamic> OnGenerationRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}
