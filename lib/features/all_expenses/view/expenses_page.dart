import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';

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
        backgroundColor: AppColors.kSecondaryBgColor,
        appBar: AppBar(
          backgroundColor: AppColors.kSecondaryBgColor,
          title: const AppText(text: 'All Your Expenses', fontSize: 20),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const AppText(text: 'Filter by: '),
                  FilterChip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    label: const AppText(text: 'Income'),
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    label: const AppText(text: 'Expense'),
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    label: const AppText(text: 'Date'),
                    onSelected: (bool value) {},
                  )
                ],
              ),
              Expanded(
                child: ListView.separated(
                        itemBuilder: (context, index) => Card(
                              color: AppColors.selectionColor.withOpacity(0.1),
                              elevation: 0,
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: AppColors.selectionColor
                                        .withOpacity(0.5),
                                    width: 0.5,
                                  ),
                                ),
                                // tileColor: Colors.grey.shade300,
                                title: const Text('Title'),
                              ),
                            ),
                        separatorBuilder: (context, index) => 5.heightBox,
                        itemCount: 20)
                    .p12(),
              ),
            ],
          ),
        ));
  }
}
