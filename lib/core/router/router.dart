import 'package:auto_route/auto_route.dart';
import 'package:your_tracks_riverpod/core/router/router.gr.dart';

/// This class used for defined routes and paths na dother properties
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  late final List<AutoRoute> routes = [
    AdaptiveRoute(page: AddExpRoute.page, path: '/add-expense'),
    AdaptiveRoute(
      page: OnboardingRoute.page,
      path: '/onboarding',
    ),
    AdaptiveRoute(page: SigninRoute.page, path: '/signin'),
    AdaptiveRoute(
      page: SignupRoute.page,
      path: '/signup',
      initial: true,
    ),
    AdaptiveRoute(page: ForgotRoute.page, path: '/forgot'),
    AdaptiveRoute(
        page: NavBarRoute.page,
        path: '/navbar',
        // initial: true,
        children: [
          AdaptiveRoute(page: HomeRoute.page),
          AdaptiveRoute(page: AllExpensesRoute.page),
          AdaptiveRoute(page: ExpenseSummaryRoute.page),
          AdaptiveRoute(page: SettingsRoute.page),
        ]),
  ];
}
