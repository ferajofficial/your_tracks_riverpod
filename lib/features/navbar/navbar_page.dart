import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
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
            backgroundColor: AppColors.kwhiteColor,
            routes: const [
              HomeRoute(),
              AllExpensesRoute(),
              ExpenseSummaryRoute(),
              SettingsRoute()
            ],
            homeIndex: 0,
            bottomNavigationBuilder: (context, tabsRouter) {
              return NavigationBarTheme(
                data: NavigationBarThemeData(
                    labelTextStyle:
                        MaterialStateProperty.all(GoogleFonts.poppins(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.w500,
                ))),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  child: NavigationBar(
                    height: 70,
                    labelBehavior:
                        NavigationDestinationLabelBehavior.onlyShowSelected,
                    backgroundColor:
                        AppColors.ksecondaryBgColor.withOpacity(0.2),
                    selectedIndex: tabsRouter.activeIndex,
                    onDestinationSelected: tabsRouter.setActiveIndex,
                    indicatorColor: AppColors.kPrimaryBgColor,
                    indicatorShape: const CircleBorder(
                      side: BorderSide(
                        color: AppColors.ksecondaryBgColor,
                        width: 1.5,
                      ),
                    ),
                    // RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(25)),
                    destinations: [
                      NavigationDestination(
                        icon: Image.asset(
                          'assets/home.png',
                        ).h(35),
                        label: "Home",
                      ),
                      NavigationDestination(
                        icon: Image.asset(
                          'assets/transaction.png',
                        ).h(35),
                        label: "Expenses",
                      ),
                      NavigationDestination(
                        icon: Image.asset('assets/graph.png').h(35),
                        label: "Statistics",
                      ),
                      NavigationDestination(
                        icon: Image.asset('assets/settings.png').h(35),
                        label: "Settings",
                      ),
                    ],
                  ),
                ),
              );
            },
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              // elevation: 6,
              backgroundColor: AppColors.ksecondaryBgColor,
              shape: const CircleBorder(),
              onPressed: () {
                context.router.push(const AddExpRoute());
              },
              child: const Icon(
                Icons.add,
                color: AppColors.kwhiteColor,
              ),
            ));
  }
}
