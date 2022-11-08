import 'package:flutter/foundation.dart';

class ContainerSizeStage with ChangeNotifier, DiagnosticableTreeMixin {
  final double _currentSizeStage = 200;

  double get currentSizeState => _currentSizeStage;

  getMyContaineStageOne() {
    notifyListeners();
  }
}
