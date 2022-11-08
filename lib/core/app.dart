import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_screens/provider/container_size.dart';
import 'package:flutter_responsive_screens/provider/text_scale.dart';
import 'package:flutter_responsive_screens/routes/app_routes.dart';
import 'package:provider/provider.dart';

import '../provider/color_tracker.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ColorState(),
        ),
        ChangeNotifierProvider(
          create: (context) => ContainerSizeStage(),
        ),
        ChangeNotifierProvider(
          create: (context) => TextSizeStage(),
        ),
      ],
      child: MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          initialRoute: "/",
          routes: AppRoutes.router),
    );
  }
}
