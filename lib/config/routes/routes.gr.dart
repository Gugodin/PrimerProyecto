// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:primerproyecto/domain/domain.dart' as _i6;
import 'package:primerproyecto/ui/screens/cats_view/cats_view.dart' as _i2;
import 'package:primerproyecto/ui/screens/cats_view/sub_screens/cat_description.dart'
    as _i1;
import 'package:primerproyecto/ui/screens/home/home.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    CatDescriptionView.name: (routeData) {
      final args = routeData.argsAs<CatDescriptionViewArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CatDescriptionView(
          key: args.key,
          cat: args.cat,
        ),
      );
    },
    CatsView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CatsView(),
      );
    },
    HomeApp.name: (routeData) {
      final args =
          routeData.argsAs<HomeAppArgs>(orElse: () => const HomeAppArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.HomeApp(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.CatDescriptionView]
class CatDescriptionView extends _i4.PageRouteInfo<CatDescriptionViewArgs> {
  CatDescriptionView({
    _i5.Key? key,
    required _i6.CatDataModel cat,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          CatDescriptionView.name,
          args: CatDescriptionViewArgs(
            key: key,
            cat: cat,
          ),
          initialChildren: children,
        );

  static const String name = 'CatDescriptionView';

  static const _i4.PageInfo<CatDescriptionViewArgs> page =
      _i4.PageInfo<CatDescriptionViewArgs>(name);
}

class CatDescriptionViewArgs {
  const CatDescriptionViewArgs({
    this.key,
    required this.cat,
  });

  final _i5.Key? key;

  final _i6.CatDataModel cat;

  @override
  String toString() {
    return 'CatDescriptionViewArgs{key: $key, cat: $cat}';
  }
}

/// generated route for
/// [_i2.CatsView]
class CatsView extends _i4.PageRouteInfo<void> {
  const CatsView({List<_i4.PageRouteInfo>? children})
      : super(
          CatsView.name,
          initialChildren: children,
        );

  static const String name = 'CatsView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeApp]
class HomeApp extends _i4.PageRouteInfo<HomeAppArgs> {
  HomeApp({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          HomeApp.name,
          args: HomeAppArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeApp';

  static const _i4.PageInfo<HomeAppArgs> page = _i4.PageInfo<HomeAppArgs>(name);
}

class HomeAppArgs {
  const HomeAppArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'HomeAppArgs{key: $key}';
  }
}
