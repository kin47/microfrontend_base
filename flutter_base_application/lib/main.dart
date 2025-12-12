import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_application/app.dart';
import 'package:flutter_base_application/application/module_registration/flutter_base_module_registration.dart';
import 'package:flutter_base_application/di/di.dart';
import 'package:flutter_base_application/module_definition.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';

import 'core.dart';

@pragma('vm:entry-point')
Future<void> startApplication() async {
  setup();
  await init();
  runApp(const FlutterBaseApplicationApp());
}

Future<void> main() async {
  await init();
  runApp(const FlutterBaseApplicationApp());
}

/// Init the Flutter KV Application stuffs.
///
Future<void> init({BaseLogger? logger}) async {
  DartPluginRegistrant.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  final BaseLogger baseLogger = logger ?? BaseLogger();
  // ignore: cascade_invocations
  baseLogger.setTag('FLUTTER_BASE_APPLICATION');

  if (kDebugMode) {
    baseLogger.kDebug = true;
  }

  getIt.registerSingleton<BaseLogger>(baseLogger);

  await initDI();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  getIt.registerLazySingleton<GlobalKey<NavigatorState>>(() => navigatorKey);

  // final String languageCode = (await getIt<GetUserLanguageCodeUseCase>()
  //     .call(const None<void>()))
  //     .getOrElse(() => RetailMANApplicationLocale.defaultLocale.languageCode);
  final Locale locale = Locale('en');
  // final FlutterKVLocalizations flutterKVLocalizations =
  // await FlutterKVLocalizations.delegate.load(locale);
  getIt.registerLazySingleton<Locale>(() => locale);
  //   ..registerLazySingleton<FlutterKVLocalizations>(
  //           () => flutterKVLocalizations);
  //
  // KVApplicationNavigationManager.setInstance(
  //     getIt<KVApplicationNavigationManager>());
  //
  // KVApplicationSystemEventAware.setInstance(
  //     getIt<KVApplicationSystemEventManager>());
  //
  // KVApplicationBtmNavBarController.setInstance(
  //     getIt<KVApplicationBtmNavBarController>());
  //
  // KVApplicationBroadcast.setInstance(getIt<KVApplicationBroadcast>());
  //
  final SharedPreferences sharedPreference = getIt<SharedPreferences>();

  // final String initialDeepLink =
  //     sharedPreference.getString(DeepLink.initialDeepLink) ?? '';
  //
  // await sharedPreference.remove(DeepLink.initialDeepLink);
  //
  // getIt<DeepLinkHandler>().addDeepLink(initialDeepLink);

  await _registerAndInitializeApplicationModules();
}

/// You need to declare modules before register them into Flutter KV Application.
///
/// See: [ModuleDefinition]
///
Future<void> _registerAndInitializeApplicationModules() async {
  final ModuleDefinition moduleDefinition = getIt<ModuleDefinition>();
  final FlutterBaseModuleRegistration moduleRegistration = getIt<
      FlutterBaseModuleRegistration>();

  for (final BaseApplicationModule module in moduleDefinition.modules) {
    moduleRegistration.register(module);
  }
  await moduleRegistration.initModules();
}
