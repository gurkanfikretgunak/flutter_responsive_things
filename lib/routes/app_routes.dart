import 'package:flutter/material.dart';

import '../views/test_view.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> router = {
    "/": (context) => const TestExample()
  };
}
