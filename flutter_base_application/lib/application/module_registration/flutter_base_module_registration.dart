import 'package:flutter/material.dart';
import 'package:flutter_base_application/di/di.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';

/// [FlutterBaseModuleRegistration] helps integrate diff module into Flutter KV Application
///
abstract class FlutterBaseModuleRegistration {
  /// Register a module
  ///
  void register(BaseApplicationModule module);

  /// Get a module by Generic type
  ///
  BaseApplicationModule get<T extends BaseApplicationModule>();

  /// Get a module by module prefix
  ///
  BaseApplicationModule getByPrefix(String prefix);

  /// Get list of modules
  ///
  List<BaseApplicationModule> get modules;

  /// Init modules
  ///
  Future<void> initModules();
}

@LazySingleton(as: FlutterBaseModuleRegistration)
class FlutterBaseModuleRegistrationImpl implements FlutterBaseModuleRegistration {
  /// Key: Generic name
  /// Value: Module
  ///
  final Map<String, BaseApplicationModule> _moduleMapperByGeneric =
  <String, BaseApplicationModule>{};

  /// Key: module prefix
  /// Value: Module
  ///
  final Map<String, BaseApplicationModule> _moduleMapperByPrefix =
  <String, BaseApplicationModule>{};

  @override
  BaseApplicationModule get<T extends BaseApplicationModule>() {
    try {
      return _moduleMapperByGeneric[T.toString()]!;
    } catch (_) {
      throw Exception('No module `${T.toString()}` registered yet');
    }
  }

  @override
  void register(BaseApplicationModule module) {
    _moduleMapperByGeneric[module.runtimeType.toString()] = module;
    _moduleMapperByPrefix[module.modulePrefix] = module;
  }

  @override
  List<BaseApplicationModule> get modules => _moduleMapperByGeneric.entries
      .map((MapEntry<String, BaseApplicationModule> e) => e.value)
      .toList();

  @override
  Future<void> initModules() async {
    final List<Future<void> Function(InitModuleParam param)> moduleInitMethods =
    <Future<void> Function(InitModuleParam param)>[];
    for (final MapEntry<String, BaseApplicationModule> entry
    in _moduleMapperByGeneric.entries) {
      moduleInitMethods.add(entry.value.initModule);
    }

    await Future.wait(moduleInitMethods.map(
      (initMethod) => initMethod(InitModuleParam(locale: getIt<Locale>()))));
  }

  @override
  BaseApplicationModule getByPrefix(String prefix) {
    try {
      return _moduleMapperByPrefix[prefix]!;
    } catch (_) {
      throw Exception('No module  with `$prefix` prefix registered yet');
    }
  }
}
