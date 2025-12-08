import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pom_module/di/di.dart';
import 'package:pom_module/presentation/sale/screen/sale_screen.dart';

void main() => runApp(const MyApp());

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

  void changeLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: navigatorKey,
      title: 'POM Module',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: _locale,
      home: const MyHomePage(
        title: 'Flutter POM Module',
      ),
    );
  }

  static _MyAppState? of(BuildContext context) {
    return context.findAncestorStateOfType<_MyAppState>();
  }
}

extension MyAppExtension on BuildContext {
  _MyAppState? get myAppState => _MyAppState.of(this);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const SaleScreen(),
    );
  }
}
