import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pom_module/di/di.dart';
import 'package:pom_module/presentation/sale/screen/sale_screen.dart';

Future<void> main() async {
  await setupCommonly();
  runApp(const MyApp());
}

Future<void> setupCommonly({bool usingInternalNavigation = true}) async {
  DartPluginRegistrant.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  if (usingInternalNavigation) {
    // Navigation setup can be added here if needed
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: navigatorKey,
      title: 'POM Module',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: _locale,
      home: const SaleScreen(),
    );
  }
}