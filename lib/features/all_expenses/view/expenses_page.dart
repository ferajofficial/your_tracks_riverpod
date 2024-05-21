import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/features/all_expenses/widgets/filter_properties.dart';
import 'package:your_tracks_riverpod/features/all_expenses/widgets/filtered_tiles.dart';

@RoutePage()
class AllExpensesPage extends StatelessWidget {
  const AllExpensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AllExpensesPageView();
  }
}

class AllExpensesPageView extends StatefulWidget {
  const AllExpensesPageView({super.key});

  @override
  State<AllExpensesPageView> createState() => _AllExpensesPageViewState();
}

class _AllExpensesPageViewState extends State<AllExpensesPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kPrimaryBgColor,
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryBgColor,
          title: const AppText(text: 'All Your Expenses', fontSize: 20),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              const FilterProperties().pOnly(left: 15),
              const Divider(
                indent: 25,
                endIndent: 25,
                thickness: 0.8,
                color: AppColors.ksecondaryBgColor,
              ),
              Expanded(
                child: const FilteredTiles().p12(),
              ),
            ],
          ),
        ));
  }
}
