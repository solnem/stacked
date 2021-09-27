// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/bottom_nav/bottom_nav_example.dart';
import '../ui/bottom_nav/favorites/favorites_navigator.dart';
import '../ui/bottom_nav/favorites/favorites_nested_view.dart';
import '../ui/bottom_nav/favorites/favorites_view.dart';
import '../ui/details/details_view.dart';
import '../ui/form/example_form_view.dart';
import '../ui/home/home_view.dart';
import '../ui/nonreactive/nonreactive_view.dart';
import '../ui/stream_view/stream_counter_view.dart';

class Routes {
  static const String homeView = '/home-view';
  static const String bottomNavExample = '/';
  static const String favoritesView = '/favorites-view';
  static const String favoritesNavigator = '/favorites-navigator';
  static const String streamCounterView = '/stream-counter-view';
  static const String detailsView = '/details-view';
  static const String exampleFormView = '/example-form-view';
  static const String nonReactiveView = '/non-reactive-view';
  static const all = <String>{
    homeView,
    bottomNavExample,
    favoritesView,
    favoritesNavigator,
    streamCounterView,
    detailsView,
    exampleFormView,
    nonReactiveView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.bottomNavExample, page: BottomNavExample),
    RouteDef(Routes.favoritesView, page: FavoritesView),
    RouteDef(
      Routes.favoritesNavigator,
      page: FavoritesNavigator,
      generator: FavoritesNavigatorRouter(),
    ),
    RouteDef(Routes.streamCounterView, page: StreamCounterView),
    RouteDef(Routes.detailsView, page: DetailsView),
    RouteDef(Routes.exampleFormView, page: ExampleFormView),
    RouteDef(Routes.nonReactiveView, page: NonReactiveView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    BottomNavExample: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => const BottomNavExample(),
        settings: data,
      );
    },
    FavoritesView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => const FavoritesView(),
        settings: data,
      );
    },
    FavoritesNavigator: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => FavoritesNavigator(),
        settings: data,
      );
    },
    StreamCounterView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => StreamCounterView(),
        settings: data,
      );
    },
    DetailsView: (data) {
      var args = data.getArgs<DetailsViewArguments>(nullOk: false);
      return CupertinoPageRoute<CupertinoRoute<dynamic>>(
        builder: (context) => DetailsView(
          key: args.key,
          name: args.name,
        ),
        settings: data,
      );
    },
    ExampleFormView: (data) {
      var args = data.getArgs<ExampleFormViewArguments>(
        orElse: () => ExampleFormViewArguments(),
      );
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => ExampleFormView(key: args.key),
        settings: data,
      );
    },
    NonReactiveView: (data) {
      return PageRouteBuilder<CustomRoute<dynamic>>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const NonReactiveView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideBottom,
      );
    },
  };
}

class FavoritesNavigatorRoutes {
  static const String favoritesView = '/';
  static const String favoritesNestedView = '/favorites-nested-view';
  static const all = <String>{
    favoritesView,
    favoritesNestedView,
  };
}

class FavoritesNavigatorRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(FavoritesNavigatorRoutes.favoritesView, page: FavoritesView),
    RouteDef(FavoritesNavigatorRoutes.favoritesNestedView,
        page: FavoritesNestedView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    FavoritesView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => const FavoritesView(),
        settings: data,
      );
    },
    FavoritesNestedView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => const FavoritesNestedView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DetailsView arguments holder class
class DetailsViewArguments {
  final Key? key;
  final String name;
  DetailsViewArguments({this.key, required this.name});
}

/// ExampleFormView arguments holder class
class ExampleFormViewArguments {
  final Key? key;
  ExampleFormViewArguments({this.key});
}
