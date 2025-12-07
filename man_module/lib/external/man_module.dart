import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/di/di.dart';
import 'package:man_module/l10n/gen_file/app_localizations.dart';
import 'package:man_module/main.dart';
import 'package:man_module/routes/man_route.dart';
import 'package:man_module/routes/route_mapper.dart' as route_mapper;

class ManModule implements BaseApplicationModule {
  @override
  Future<void> initModule(InitModuleParam param) async {
    try {
      await setupCommonly(usingInternalNavigation: false);
      getIt<BaseLogger>().info('[ManModule] initModule success');
    } catch (e, trace) {
      getIt<BaseLogger>().error('[ManModule] initModule ERROR', e, trace);
    }
  }

  @override
  String get modulePrefix => route_mapper.modulePrefix;

  @override
  BaseApplicationRoute get route => getIt<ManRoute>();

  @override
  LocalizationsDelegate get localizationsDelegate => AppLocalizations.delegate;

  @override
  BaseDebugConsoleOperator get debugConsoleOperator =>
      getIt<BaseDebugConsoleOperator>();

  @override
  String get moduleDisplayName => 'Man Module';
}
