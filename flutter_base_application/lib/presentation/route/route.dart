import 'package:flutter/material.dart';
import 'package:flutter_base_application/application/module_registration/flutter_base_module_registration.dart';
import 'package:flutter_base_application/di/di.dart';
import 'package:flutter_base_application/presentation/definition/definition.dart';
import 'package:flutter_base_application/presentation/screen/host/host_screen.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';

/// [FlutterBaseApplicationRoute] that resolve navigation with diff module as POM, MasterLayout...
///
abstract class FlutterBaseApplicationRoute {
  /// That method helps resolve corresponding module route
  ///
  Route<dynamic> onGenerateRoute(RouteSettings settings);
}

@LazySingleton(as: FlutterBaseApplicationRoute)
class FlutterBaseApplicationRouteImpl implements FlutterBaseApplicationRoute {
  FlutterBaseApplicationRouteImpl(this.moduleRegistration);

  final FlutterBaseModuleRegistration moduleRegistration;

  @override
  Route onGenerateRoute(RouteSettings settings) {
    try {
      switch (settings.name) {
        case ScreenName.host:
          return MaterialPageRoute(
              builder: (BuildContext context) => const HostScreen(),
              settings: settings);
        default:
          break;
      }

      final BaseApplicationModule module =
        moduleRegistration.getByPrefix(settings.modulePrefix);
      getIt<BaseLogger>().info(
          '[FlutterBaseApplicationRoute]Received deepLink "${settings.name}". Resolved by ${module.runtimeType} route');
      return module.route.onGenerateRoute(settings);
    } catch (_) {
      /// Nothing here
    }

    getIt<BaseLogger>().info(
        '[FlutterBaseApplicationRoute]Received deepLink "${settings.name}". Resolved by $FlutterBaseApplicationRoute');

    return MaterialPageRoute(
        builder: (BuildContext context) => const SizedBox.shrink(),
        settings: settings);
  }
}

extension on RouteSettings {
  String get modulePrefix {
    final Uri? uri = Uri.tryParse(name ?? '');

    if (uri == null) {
      return '';
    }

    final List<String> pathSegments = uri.pathSegments;

    if (pathSegments.isEmpty) {
      return '';
    }

    return uri.pathSegments.first;
  }
}
