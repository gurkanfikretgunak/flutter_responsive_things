import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColorState with ChangeNotifier, DiagnosticableTreeMixin {
  Color _currentColor = Colors.black;

  Color get currentColor => _currentColor;

  getMyColorStageOne() {
    _currentColor = Colors.red;

    notifyListeners();
  }

  getMyColorStageTwo() {
    _currentColor = Colors.blue;

    notifyListeners();
  }

  getMyColorStageThree() {
    _currentColor = Colors.green;

    notifyListeners();
  }

  getMyColorStageFour() {
    _currentColor = Colors.yellow;

    notifyListeners();
  }
}
