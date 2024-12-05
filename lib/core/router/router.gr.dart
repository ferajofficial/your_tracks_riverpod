// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:your_tracks_riverpod/features/add_expenses/view/addexp_page.dart'
    as _i1;
import 'package:your_tracks_riverpod/features/all_expenses/view/expenses_page.dart'
    as _i2;
import 'package:your_tracks_riverpod/features/counter/view/counter_page.dart'
    deferred as _i3;
import 'package:your_tracks_riverpod/features/expense_summary/view/summary_page.dart'
    as _i4;
import 'package:your_tracks_riverpod/features/home/view/home_page.dart' as _i6;
import 'package:your_tracks_riverpod/features/navbar/navbar_page.dart'
    deferred as _i7;
import 'package:your_tracks_riverpod/features/onboarding/view/onboarding_page.dart'
    as _i8;
import 'package:your_tracks_riverpod/features/password/view/forgot_page.dart'
    as _i5;
import 'package:your_tracks_riverpod/features/settings/view/settings_page.dart'
    as _i9;
import 'package:your_tracks_riverpod/features/signin/view/signin_page.dart'
    as _i10;
import 'package:your_tracks_riverpod/features/signup/view/signup_page.dart'
    as _i11;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AddExpRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddExpPage(),
      );
    },
    AllExpensesRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllExpensesPage(),
      );
    },
    CounterRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.CounterPage(),
        ),
      );
    },
    ExpenseSummaryRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ExpenseSummaryPage(),
      );
    },
    ForgotRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgotPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    NavBarRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i7.loadLibrary,
          () => _i7.NavBarPage(),
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OnboardingPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SettingsPage(),
      );
    },
    SigninRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SigninPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SignupPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddExpPage]
class AddExpRoute extends _i12.PageRouteInfo<void> {
  const AddExpRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AddExpRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddExpRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AllExpensesPage]
class AllExpensesRoute extends _i12.PageRouteInfo<void> {
  const AllExpensesRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AllExpensesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllExpensesRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CounterPage]
class CounterRoute extends _i12.PageRouteInfo<void> {
  const CounterRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ExpenseSummaryPage]
class ExpenseSummaryRoute extends _i12.PageRouteInfo<void> {
  const ExpenseSummaryRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ExpenseSummaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExpenseSummaryRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ForgotPage]
class ForgotRoute extends _i12.PageRouteInfo<void> {
  const ForgotRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ForgotRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NavBarPage]
class NavBarRoute extends _i12.PageRouteInfo<void> {
  const NavBarRoute({List<_i12.PageRouteInfo>? children})
      : super(
          NavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBarRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OnboardingPage]
class OnboardingRoute extends _i12.PageRouteInfo<void> {
  const OnboardingRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SettingsPage]
class SettingsRoute extends _i12.PageRouteInfo<void> {
  const SettingsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SigninPage]
class SigninRoute extends _i12.PageRouteInfo<void> {
  const SigninRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SigninRoute.name,
          initialChildren: children,
        );

  static const String name = 'SigninRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SignupPage]
class SignupRoute extends _i12.PageRouteInfo<void> {
  const SignupRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
