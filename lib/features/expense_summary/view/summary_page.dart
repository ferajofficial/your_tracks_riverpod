import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/features/expense_summary/widgets/bar_chart.dart';
import 'package:your_tracks_riverpod/features/expense_summary/widgets/spending_cards.dart';

@RoutePage()
class ExpenseSummaryPage extends StatelessWidget {
  const ExpenseSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpenseSummaryView();
  }
}

class ExpenseSummaryView extends StatefulWidget {
  const ExpenseSummaryView({super.key});

  @override
  State<ExpenseSummaryView> createState() => _ExpenseSummaryViewState();
}

class _ExpenseSummaryViewState extends State<ExpenseSummaryView> {
  @override
  Widget build(BuildContext context) {
// Static Category List
    // final List<Map<String, String>> spendingData = [
    //   {'title': 'Groceries', 'amount': '₹ 2000 .00',},
    //   {'title': 'Entertainment', 'amount': '₹ 1150.00'},
    //   {'title': 'Utilities', 'amount': '₹ 1850.00'},
    //   {'title': 'Transport', 'amount': '₹ 3000.00'},
    //   {'title': 'Dining Out', 'amount': '₹ 1200.00'},
    //   {'title': 'Miscellaneous', 'amount': '₹ 500.00'},
    // ];
    final List<Map<String, String>> spendingData = [
      {'title': 'Groceries', 'amount': '₹ 2000.00', 'image': 'assets/cart.png'},
      {
        'title': 'Entertainment',
        'amount': '₹ 1150.00',
        'image': 'assets/movie.png'
      },
      {
        'title': 'Utilities',
        'amount': '₹ 1850.00',
        'image': 'assets/utils.png'
      },
      {
        'title': 'Transport',
        'amount': '₹ 3000.00',
        'image': 'assets/travel.png'
      },
      {
        'title': 'Dining Out',
        'amount': '₹ 1200.00',
        'image': 'assets/food.png'
      },
      {
        'title': 'Miscellaneous',
        'amount': '₹ 500.00',
        'image': 'assets/miscs.png'
      },
    ];

    return Scaffold(
        backgroundColor: AppColors.kPrimaryBgColor,
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryBgColor,
          title: const AppText(text: 'Expense Summary', fontSize: 20),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText(
                text: '01 April - 30 April 2024',
                fontSize: 18,
                color: Colors.grey.shade400,
              ),
              AppText(
                  text: '₹ 2,05,00 . 00',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: AppColors.kBlackColor.withOpacity(0.6)),
              5.heightBox,
              Container(
                decoration: BoxDecoration(
                    color: AppColors.kPrimaryBgColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.kBlackColor.withOpacity(0.2),
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: const Offset(0, 5),
                      ),
                    ]),
                child: const Barchart()
                    .pOnly(top: 15, bottom: 15, left: 5, right: 5),
              ).h(350).w(400).p8(),
              15.heightBox,
              const Align(
                alignment: Alignment.centerLeft,
                child: AppText(
                  text: 'Spendings by Category',
                  fontSize: 18,
                ),
              ),
              10.heightBox,
              Expanded(child: SpendingCards(spendingData: spendingData)),
            ],
          ).p12(),
        ));
  }
}
