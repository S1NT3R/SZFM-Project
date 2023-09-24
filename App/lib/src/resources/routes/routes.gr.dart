// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:jokes_app/src/ui/pages/categories/categories_page.dart' as _i1;
import 'package:jokes_app/src/ui/pages/favorites/favorites_page.dart' as _i2;
import 'package:jokes_app/src/ui/pages/jokes/jokes_page.dart' as _i3;
import 'package:jokes_app/src/ui/pages/main/main_page.dart' as _i4;
import 'package:jokes_app/src/ui/pages/my_jokes/my_jokes_page.dart' as _i5;
import 'package:jokes_app/src/ui/pages/random_joke/random_joke_page.dart'
    as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    CategoriesRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CategoriesPage(),
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FavoritesPage(),
      );
    },
    JokesRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.JokesPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainPage(),
      );
    },
    MyJokesRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MyJokesPage(),
      );
    },
    RandomJokeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RandomJokePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoriesPage]
class CategoriesRoute extends _i7.PageRouteInfo<void> {
  const CategoriesRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FavoritesPage]
class FavoritesRoute extends _i7.PageRouteInfo<void> {
  const FavoritesRoute({List<_i7.PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.JokesPage]
class JokesRoute extends _i7.PageRouteInfo<void> {
  const JokesRoute({List<_i7.PageRouteInfo>? children})
      : super(
          JokesRoute.name,
          initialChildren: children,
        );

  static const String name = 'JokesRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MyJokesPage]
class MyJokesRoute extends _i7.PageRouteInfo<void> {
  const MyJokesRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MyJokesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyJokesRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.RandomJokePage]
class RandomJokeRoute extends _i7.PageRouteInfo<void> {
  const RandomJokeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RandomJokeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RandomJokeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
