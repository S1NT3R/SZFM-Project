import 'package:auto_route/auto_route.dart';
import 'package:jokes_app/src/resources/routes/routes.gr.dart';

export 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // CustomRoute(
        //   path: '/splash',
        //   page: SplashRoute.page,
        //   initial: true,
        //   transitionsBuilder: TransitionsBuilders.fadeIn,
        //   durationInMilliseconds: 400,
        // ),
        CustomRoute(
          path: '/main',
          page: MainRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          path: '/categories',
          page: CategoriesRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          path: '/favorites',
          page: FavoritesRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          path: '/my-jokes',
          page: MyJokesRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          path: '/random-joke',
          page: RandomJokeRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          path: '/jokes',
          page: JokesRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
      ];
}
