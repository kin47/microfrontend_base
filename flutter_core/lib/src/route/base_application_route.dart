import 'package:flutter/material.dart';

/// A Route standard for diff modules.
///
abstract class BaseApplicationRoute {
  /// Module route delegate.
  ///
  Route<dynamic> onGenerateRoute(RouteSettings settings);

  /// A [RouteObserver]. That will be register into Flutter Base Application
  /// Help aware route changed. See [RouteAware]
  ///
  RouteObserver<ModalRoute> get routeObserver;
}
