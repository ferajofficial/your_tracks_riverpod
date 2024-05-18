import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/core/router/router.gr.dart';
import 'package:your_tracks_riverpod/shared/global_loader.dart';

@RoutePage(
  deferredLoading: true,
)
class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate a 3-second delay using Future.delayed
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const AppLoader()
        : AutoTabsScaffold(
            routes: const [
                HomeRoute(),
                AllExpensesRoute(),
                ExpenseSummaryRoute(),
                SettingsRoute()
              ],
            homeIndex: 0,
            bottomNavigationBuilder: (context, tabsRouter) {
              return ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                child: NavigationBar(
                  height: 70,
                  labelBehavior:
                      NavigationDestinationLabelBehavior.onlyShowSelected,
                  backgroundColor: AppColors.selectionColor.withOpacity(0.3),
                  selectedIndex: tabsRouter.activeIndex,
                  onDestinationSelected: tabsRouter.setActiveIndex,
                  indicatorColor: AppColors.kSecondaryBgColor.withOpacity(0.7),
                  indicatorShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  destinations: [
                    NavigationDestination(
                      icon: Icon(
                        Icons.home,
                        color: tabsRouter.activeIndex == 0
                            ? AppColors.selectionColor
                            : AppColors.kwhite.withOpacity(0.8),
                      ),
                      label: "Home",
                    ),
                    NavigationDestination(
                      icon: Icon(
                        Icons.request_page_rounded,
                        color: tabsRouter.activeIndex == 1
                            ? AppColors.selectionColor
                            : AppColors.kwhite.withOpacity(0.8),
                      ),
                      label: "Expenses",
                    ),
                    NavigationDestination(
                      icon: Icon(
                        Icons.stacked_bar_chart_rounded,
                        color: tabsRouter.activeIndex == 2
                            ? AppColors.selectionColor
                            : AppColors.kwhite.withOpacity(0.8),
                      ),
                      label: "Statistics",
                    ),
                    NavigationDestination(
                      icon: Icon(
                        Icons.settings,
                        color: tabsRouter.activeIndex == 3
                            ? AppColors.selectionColor
                            : AppColors.kwhite.withOpacity(0.8),
                      ),
                      label: "Settings",
                    ),
                  ],
                ),
              );
            },
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              // elevation: 5,
              backgroundColor: AppColors.selectionColor,
              shape: const CircleBorder(),
              onPressed: () {
                context.router.push(const AddExpRoute());
              },
              child: const Icon(
                Icons.add,
                color: AppColors.kwhite,
              ),
            ));
  }
}
