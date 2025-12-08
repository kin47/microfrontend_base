import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pom_module/di/di.dart';
import 'package:pom_module/main.dart';
import 'package:pom_module/routes/pom_route.dart';
import 'package:pom_module/routes/route_mapper.dart' as route_mapper;

class PomModule implements BaseApplicationModule {
  @override
  Future<void> initModule(InitModuleParam param) async {
    try {
      await setupCommonly(usingInternalNavigation: false);
      getIt<BaseLogger>().info('[PomModule] initModule success');
    } catch (e, trace) {
      getIt<BaseLogger>().error('[PomModule] initModule ERROR', e, trace);
    }
  }

  @override
  String get modulePrefix => route_mapper.modulePrefix;

  @override
  BaseApplicationRoute get route => getIt<PomRoute>();

  @override
  LocalizationsDelegate get localizationsDelegate => throw UnimplementedError();

  @override
  BaseDebugConsoleOperator get debugConsoleOperator =>
      getIt<BaseDebugConsoleOperator>();

  @override
  String get moduleDisplayName => 'POM Module';
}

