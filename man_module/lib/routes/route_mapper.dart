import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/presentation/more/screen/more_screen.dart';
import 'package:man_module/presentation/product/screen/product_screen.dart';
import 'package:man_module/routes/screen_name.dart';

String modulePrefix = 'man_module';

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
          deepLink: ScreenName.more,
          screen: (RouteSettings settings) {
            return MaterialPageRoute(
              builder: (BuildContext context) => MoreScreen(),
              settings: settings,
            );
          }),
      ScreenRouteDefinition(
          deepLink: ScreenName.more,
          screen: (RouteSettings settings) {
            return MaterialPageRoute(
              builder: (BuildContext context) => MoreScreen(),
              settings: settings,
            );
          }),
      ScreenRouteDefinition(
          deepLink: ScreenName.product,
          screen: (RouteSettings settings) {
            return MaterialPageRoute(
              builder: (BuildContext context) => ProductScreen(),
              settings: settings,
            );
          }),
],);