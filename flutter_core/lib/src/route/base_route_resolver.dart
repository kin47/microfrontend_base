import 'package:flutter/material.dart';
import 'package:trie_router/trie_router.dart';

/// Screen data type
///
typedef RouteData = PageRoute Function(RouteSettings settings);

/// Unknown screen data type
///
typedef OnUnknownRoute = RouteData;

/// A place that contain definitions collection
///
class RouteDefinition {
  final List<ScreenRouteDefinition> routeMapper;
  const RouteDefinition({required this.routeMapper});
}

/// The definition for deepLink and screen its.
///
class ScreenRouteDefinition {
  final String deepLink;
  final RouteData screen;

  const ScreenRouteDefinition({
    required this.deepLink,
    required this.screen,
  });
}

/// [BaseRouteResolver] very useful to mapping deepLink with specific a screen param.
///
/// That recognized deepLink pattern, example:
///   * DeepLink of [/man/<customer_detail?id=<value>] pattern such as: `/man/customer_detail?id=123`, `/man/customer_detail?id=456`
///   * DeepLink of [/man/customer_detail/:id] pattern such as: `/man/customer_detail/123`, `/man/customer_detail/456`
///   * DeepLink of [pom/user/:id/setting] pattern such as: `/pom/user/123/setting`, `/pom/user/456/setting`
///
/// [BaseRouteResolver] recognized they pattern and return same page, which deepLink its.
///
/// If the deepLink is not existed yet, [onUnknownRoute] going to be called.
///
/// Used Example:
///    RouteResolver(
///      route: {
///        /// [/man/<customer_detail?id=<value>] pattern
///        '/man/customer_detail': (RouteSettings settings) {
///          return MaterialPageRoute(
///              builder: (context) => CustomerDetailScreen(
///                  param: CustomerDetailScreenParam.fromDeepLink(settings.name)),
///              settings: settings);
///        },
///        ///  [/pom/user/:id/setting] pattern
///        '/pom/user/:id/setting': (RouteSettings settings) {
///          return MaterialPageRoute(
///              builder: (context) => UserSettingScreen(
///                  param: UserSettingScreenParan.fromDeepLink(settings.name)),
///              settings: settings);
///        },
///      },
///      onUnknownRoute: (RouteSettings settings) {
///        return MaterialPageRoute(
///            builder: (context) => EmptyScreen(), settings: settings);
///      });
///
class BaseRouteResolver {
  final TrieRouter<RouteData> _router = TrieRouter<RouteData>();
  final OnUnknownRoute onUnknownRoute;
  BaseRouteResolver({
    required RouteDefinition route,
    required this.onUnknownRoute,
  }) {
    for (final r in route.routeMapper) {
      _router.add(r.deepLink, r.screen);
    }
  }

  PageRoute get(String deepLink, RouteSettings settings) {
    return _router.get(deepLink)?.value?.call(settings) ??
        onUnknownRoute(settings);
  }
}
