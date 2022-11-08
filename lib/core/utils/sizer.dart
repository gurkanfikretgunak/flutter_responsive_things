import 'package:flutter/material.dart';

class Sizer {
  static getOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }

  static getH(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static getW(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static getTextScale(BuildContext context) {
    return MediaQuery.of(context).textScaleFactor;
  }
}

enum AspectRatioValues {
  youTube(16 / 9),
  movie(4 / 3);

  final double value;

  const AspectRatioValues(this.value);
}

enum ScreenSizeLimit {
  standartMobile(480),
  iPhone5s(375);

  final double value;
  const ScreenSizeLimit(this.value);
}

enum ScreenState {
  q1(0.12),
  q2(0.50),
  q3(0.75),
  q4(1.0);

  final double value;

  const ScreenState(this.value);
}
