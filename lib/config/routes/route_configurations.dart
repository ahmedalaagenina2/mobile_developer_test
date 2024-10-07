import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

class _AppPaths {
  _AppPaths._();

  static const String initLocation = '/';
  static const String authScreen = "/authScreen";
  static const String homeScreen = '/homeScreen';
  static const String recipesItemDetailsScreen = '/recipesItemDetailsScreen';
  static const String favouriteScreen = '/favouriteScreen';
}

class RouteConfigurations {
  RouteConfigurations._internal();

  static final RouteConfigurations _instance = RouteConfigurations._internal();
  factory RouteConfigurations() => _instance;

  static RouteConfigurations get instance => _instance;
  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();

  static final router = GoRouter(
    debugLogDiagnostics: true,
    redirect: (context, state) {
      String currentLocation = state.matchedLocation;
      bool userAuthenticated =
          CacheHelper.getData(key: CacheKeys.userExists) ?? false;
      final bool onStartScreen = currentLocation == _AppPaths.initLocation;
      final bool onLoginScreen = currentLocation == _AppPaths.authScreen;
      if (userAuthenticated) {
        if (onStartScreen || onLoginScreen) {
          return _AppPaths.homeScreen;
        }
      }
      if (!userAuthenticated) {
        return _AppPaths.authScreen;
      }

      return null;
    },
    navigatorKey: parentNavigatorKey,
    initialLocation: _AppPaths.homeScreen,
    routes: _routes,
  );

  static final _routes = [
    GoRoute(
      path: _AppPaths.authScreen,
      name: AppRoutes.authScreen,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: const AuthScreen(),
      ),
    ),
    GoRoute(
      path: _AppPaths.homeScreen,
      name: AppRoutes.homeScreen,
      pageBuilder: (context, GoRouterState state) => _getPage(
        child: const HomeScreen(),
        state: state,
      ),
    ),
    GoRoute(
      path: _AppPaths.recipesItemDetailsScreen,
      name: AppRoutes.recipesItemDetailsScreen,
      pageBuilder: (context, state) {
        var recipesItem = state.extra;
        return _getPage(
          state: state,
          child: RecipesItemDetailsScreen(recipesItem: recipesItem as Recipes),
        );
      },
    ),
    GoRoute(
      path: _AppPaths.favouriteScreen,
      name: AppRoutes.favouriteScreen,
      pageBuilder: (context, state) => _getPage(
        state: state,
        child: const FavouriteScreen(),
      ),
    ),
  ];

  static Page _getPage({
    required Widget child,
    required GoRouterState state,
    bool fullScreenDialog = false,
  }) {
    return MaterialPage(
      key: state.pageKey,
      child: child,
      fullscreenDialog: fullScreenDialog,
    );
  }

  static void setPageTitle(String title, BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
      ApplicationSwitcherDescription(
        label: title,
        primaryColor: Theme.of(context).primaryColor.value,
      ),
    );
  }
}
