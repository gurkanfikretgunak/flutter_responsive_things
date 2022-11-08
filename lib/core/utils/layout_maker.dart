import 'package:flutter/material.dart';

import 'sizer.dart';

class LayoutMaker extends StatelessWidget {
  const LayoutMaker(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.sizer});

  final Widget mobile;
  final Widget tablet;
  final double sizer;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 480) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}

class LayoutMakerMockWidget {
  static Widget mobile(BuildContext context) {
    return Container(
      width: Sizer.getW(context) * ScreenState.q1.value,
      height: Sizer.getH(context) * ScreenState.q1.value,
      color: Colors.orange,
    );
  }

  static Widget tablet(BuildContext context) {
    return Container(
      height: Sizer.getH(context) * ScreenState.q3.value * .025,
      width: Sizer.getW(context) * ScreenState.q3.value,
      color: Colors.red,
    );
  }
}
