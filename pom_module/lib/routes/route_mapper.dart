import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pom_module/presentation/sale/screen/sale_screen.dart';
import 'package:pom_module/routes/screen_name.dart';

String modulePrefix = 'pom_module';

RouteDefinition route = RouteDefinition(
    routeMapper: <ScreenRouteDefinition>[
      ScreenRouteDefinition(
          deepLink: '/',
          screen: (RouteSettings settings) => MaterialPageRoute(
            builder: (BuildContext context) => const SizedBox(),
            settings: settings,
          )),
      ScreenRouteDefinition(
          deepLink: modulePrefix,
          screen: (RouteSettings settings) => MaterialPageRoute(
            builder: (BuildContext context) => const SizedBox(),
            settings: settings,
          )),
      ScreenRouteDefinition(
          deepLink: ScreenName.sale,
          screen: (RouteSettings settings) {
            return MaterialPageRoute(
              builder: (BuildContext context) => const SaleScreen(),
              settings: settings,
            );
          }),
],);

