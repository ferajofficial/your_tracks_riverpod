import 'package:auto_route/auto_route.dart';
import 'package:your_tracks_riverpod/core/router/router.gr.dart';

/// This class used for defined routes and paths na dother properties
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  late final List<AutoRoute> routes = [
   
    AutoRoute(
      page: ProfileRoute.page,
      path: '/profile',
    ),
    AutoRoute(
      page: AddExpRoute.page,
      path: '/add-expense',
    ),
    AutoRoute(
        page: NavBarRoute.page,
        path: '/navbar',
        initial: true,
        children: [
          AutoRoute(
            page: HomeRoute.page,
            path: 'home',
          ),
          AutoRoute(
            page: AllExpensesRoute.page,
            path: 'expenses',
          ),
          AutoRoute(
            page: ExpenseSummaryRoute.page,
            path: 'summary',
          ),
          AutoRoute(
            page: SettingsRoute.page,
            path: 'settings',
          ),
        ]),
  ];
}
