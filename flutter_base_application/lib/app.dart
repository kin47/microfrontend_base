import 'package:flutter/material.dart';
import 'package:flutter_base_application/presentation/definition/definition.dart';
import 'package:flutter_base_application/presentation/route/route.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:ui_design_system/screen_util/ds_screen_util.dart';

import 'di/di.dart';

class FlutterBaseApplicationApp extends StatelessWidget {
  const FlutterBaseApplicationApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: DSScreenUtil.screenSize,
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        initialRoute: ScreenName.host,
        onGenerateRoute: getIt<FlutterBaseApplicationRoute>().onGenerateRoute,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}