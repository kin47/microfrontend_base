import 'package:flutter/material.dart';
import 'package:flutter_core/src/logger/base_debug_console_operator.dart';
import 'package:flutter_core/src/route/base_application_route.dart';

/// A params wrapper for [initModule].
///
class InitModuleParam {
  final Locale locale;
  const InitModuleParam({
    required this.locale,
  });
}

/// Diff module as POM, MasterLayout,... needed integrate to the Flutter KV Application.
///
/// It is paramount to enforce a standard on how modules are integrated.
/// That make consistency and maintainability.
///
/// [BaseApplicationModule] is a that standard.
///
abstract class BaseApplicationModule {
  /// That method to init module
  ///
  /// To make modules are usable, needed to init them.
  /// Modules needed to init env, dependency injection, languages and more itself.
  ///
  /// Some crucial information needed in the initialization module process, such as locale and more.
  /// They should be provide by Flutter KV Application via [InitModuleParam].
  ///
  Future<void> initModule(InitModuleParam param);

  /// Diff module as POM, MasterLayout,... needed diff prefix.
  ///
  /// That crucial for resolve corresponding [route] for each other.
  ///
  String get modulePrefix;

  /// Module route.
  ///
  /// Responsible for navigation in the module.
  ///
  BaseApplicationRoute get route;

  /// Module localizations delegate.
  ///
  /// That helps automation in corresponding module language or can manually by `locale` property in [InitModuleParam].
  ///
  LocalizationsDelegate get localizationsDelegate;

  /// Module debug console operator.
  ///
  /// That delegate the debug console operator to the module.
  ///
  BaseDebugConsoleOperator get debugConsoleOperator;

  /// Module display name.
  ///
  /// That display name of the module.
  ///
  String get moduleDisplayName;
}
