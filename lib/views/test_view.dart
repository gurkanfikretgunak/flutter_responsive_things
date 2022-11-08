import 'package:flutter/material.dart';
import 'package:flutter_responsive_screens/core/utils/layout_maker.dart';

import '../core/utils/sizer.dart';

class TestExample extends StatelessWidget {
  const TestExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: Sizer.getH(context),
          color: Colors.grey.withOpacity(0.2),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AspectRatio(
                  aspectRatio: AspectRatioValues.movie.value,
                  child: Container(
                    color: Colors.green,
                    height: 200,
                    width: 100,
                  )),
              LayoutMaker(
                mobile: LayoutMakerMockWidget.mobile(context),
                tablet: LayoutMakerMockWidget.tablet(context),
                sizer: ScreenSizeLimit.iPhone5s.value,
              ),
              SizedBox(
                height: Sizer.getH(context) * ScreenState.q1.value,
              ),
              Container(
                width: Sizer.getW(context) * ScreenState.q3.value,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Screen Media Query Contexts",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const Divider(),
                      Text("Screen W : ${Sizer.getW(context)}"),
                      Text("Screen H : ${Sizer.getH(context)}"),
                      Text(
                          "Screen Text Scale : ${Sizer.getTextScale(context)}"),
                      Text(
                          "Screen Orientation: ${Sizer.getOrientation(context)}"),
                    ],
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
