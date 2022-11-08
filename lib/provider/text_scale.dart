import 'package:flutter/foundation.dart';

class TextSizeStage with ChangeNotifier, DiagnosticableTreeMixin {
  final double _currentSizeStage = 200;

  double get currentTextSizeState => _currentSizeStage;

  getMyTextStageOne() {
    notifyListeners();
  }
}
