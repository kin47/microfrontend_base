import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:man_module/l10n/gen_file/app_localizations.dart';

import 'di/di.dart';

void main() => runApp(const MyApp());

Future<void> setupCommonly({bool usingInternalNavigation = true}) async {
  DartPluginRegistrant.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  // String language = getIt.get<CurrentSession>().getLanguage();
  // final AppLocalizations appLocalizations =
  //   await AppLocalizations.delegate.load(Locale(language));

  if (usingInternalNavigation) {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    // final NavigationObserverImpl navigationObserver = NavigationObserverImpl();
    // retailCore.KVApplicationNavigationManager.setInstance(
    //     NavigationManagerImpl(navigatorKey, navigationObserver));
  }

  // getIt
  //   ..registerLazySingleton<AppLocalizations>(() => appLocalizations)
  //   ..registerLazySingleton<retailCore.KVApplicationNavigationManager>(
  //           () => retailCore.KVApplicationNavigationManager.instance);
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
      home: MyHomePage(
        title: 'Flutter Man Module',
        onLocaleChanged: changeLocale,
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
  const MyHomePage({super.key, required this.title, this.onLocaleChanged});

  final String title;
  final ValueChanged<Locale>? onLocaleChanged;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
