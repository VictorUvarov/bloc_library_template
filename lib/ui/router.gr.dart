// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_library_template/ui/views/home/home_view.dart';
import 'package:bloc_library_template/ui/views/details/details_view.dart';

class Routes {
  static const String homeView = '/';
  static const String detailsView = '/details-view';
  static const all = <String>{
    homeView,
    detailsView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.detailsView, page: DetailsView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeView: (RouteData data) {
      var args =
          data.getArgs<HomeViewArguments>(orElse: () => HomeViewArguments());
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomeView(key: args.key),
        settings: data,
      );
    },
    DetailsView: (RouteData data) {
      var args = data.getArgs<DetailsViewArguments>(
          orElse: () => DetailsViewArguments());
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => DetailsView(key: args.key),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future<dynamic> pushHomeView({
    Key key,
  }) =>
      pushNamed<dynamic>(
        Routes.homeView,
        arguments: HomeViewArguments(key: key),
      );

  Future<dynamic> pushDetailsView({
    Key key,
  }) =>
      pushNamed<dynamic>(
        Routes.detailsView,
        arguments: DetailsViewArguments(key: key),
      );
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//HomeView arguments holder class
class HomeViewArguments {
  final Key key;
  HomeViewArguments({this.key});
}

//DetailsView arguments holder class
class DetailsViewArguments {
  final Key key;
  DetailsViewArguments({this.key});
}
