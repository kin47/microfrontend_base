import 'package:flutter/material.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pom_module/routes/route_mapper.dart';

abstract class PomRoute implements BaseApplicationRoute {}

@LazySingleton(as: PomRoute)
class PomRouteImpl implements PomRoute {
  final RouteObserver<ModalRoute> _routeObserver = RouteObserver<ModalRoute>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final PageRoute result = routeResolver.get(settings.name ?? '', settings);
    return result;
  }

  @override
  RouteObserver<ModalRoute> get routeObserver => _routeObserver;
}

final BaseRouteResolver routeResolver = BaseRouteResolver(
    route: route,
    onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(
        builder: (BuildContext context) => const Text('404'),
        settings: settings));

