import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:man_module/l10n/gen_file/app_localizations.dart';
import 'package:man_module/presentation/more/screen/more_screen.dart';

import 'di/di.dart';

Future<void> main() async {
  await setupCommonly();
  runApp(const MyApp());
}

Future<void> setupCommonly({bool usingInternalNavigation = true}) async {
  DartPluginRegistrant.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  final AppLocalizations appLocalizations =
    await AppLocalizations.delegate.load(Locale('en'));

  if (usingInternalNavigation) {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    // final NavigationObserverImpl navigationObserver = NavigationObserverImpl();
    // retailCore.KVApplicationNavigationManager.setInstance(
    //     NavigationManagerImpl(navigatorKey, navigationObserver));
  }

  getIt
    ..registerLazySingleton<AppLocalizations>(() => appLocalizations);
    // ..registerLazySingleton<retailCore.KVApplicationNavigationManager>(
    //         () => retailCore.KVApplicationNavigationManager.instance);
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: _locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MoreScreen(),
    );
  }
}