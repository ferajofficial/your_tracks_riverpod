// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:your_tracks_riverpod/features/add_expenses/view/addexp_page.dart'
    as _i1;
import 'package:your_tracks_riverpod/features/all_expenses/view/expenses_page.dart'
    as _i2;
import 'package:your_tracks_riverpod/features/counter/view/counter_page.dart'
    deferred as _i3;
import 'package:your_tracks_riverpod/features/expense_summary/view/summary_page.dart'
    as _i4;
import 'package:your_tracks_riverpod/features/home/view/home_page.dart' as _i5;
import 'package:your_tracks_riverpod/features/navbar/navbar_page.dart'
    deferred as _i6;
import 'package:your_tracks_riverpod/features/profile/view/profile_page.dart'
    as _i7;
import 'package:your_tracks_riverpod/features/settings/view/settings_page.dart'
    as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AddExpRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddExpPage(),
      );
    },
    AllExpensesRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllExpensesPage(),
      );
    },
    CounterRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.CounterPage(),
        ),
      );
    },
    ExpenseSummaryRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ExpenseSummaryPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    NavBarRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.NavBarPage(),
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddExpPage]
class AddExpRoute extends _i9.PageRouteInfo<void> {
  const AddExpRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AddExpRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddExpRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AllExpensesPage]
class AllExpensesRoute extends _i9.PageRouteInfo<void> {
  const AllExpensesRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AllExpensesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllExpensesRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CounterPage]
class CounterRoute extends _i9.PageRouteInfo<void> {
  const CounterRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ExpenseSummaryPage]
class ExpenseSummaryRoute extends _i9.PageRouteInfo<void> {
  const ExpenseSummaryRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ExpenseSummaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExpenseSummaryRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NavBarPage]
class NavBarRoute extends _i9.PageRouteInfo<void> {
  const NavBarRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBarRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SettingsPage]
class SettingsRoute extends _i9.PageRouteInfo<void> {
  const SettingsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
