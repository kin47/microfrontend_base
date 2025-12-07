import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:injectable/injectable.dart';
import 'package:man_module/routes/route_mapper.dart';

abstract class ManRoute implements BaseApplicationRoute {}

@LazySingleton(as: ManRoute)
class MasterLayoutRouteImpl implements ManRoute {
  final RouteObserver<ModalRoute> _routeObserver = RouteObserver<ModalRoute>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final PageRoute result =  routeResolver.get(settings.name ?? '', settings);
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
