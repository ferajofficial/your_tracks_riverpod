import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/features/expense_summary/widgets/bar_chart.dart';

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
    return Scaffold(
        backgroundColor: AppColors.kSecondaryBgColor,
        appBar: AppBar(
          backgroundColor: AppColors.kSecondaryBgColor,
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
                  text: '₹ 2,00,09',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: AppColors.kBlack.withOpacity(0.6)),
              8.heightBox,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: AppColors.selectionColor.withOpacity(0.5),
                    width: 0.5,
                  ),
                ),
                child: const Barchart().pOnly(top: 15, bottom: 15),
              ).h(350).w(400),
              15.heightBox,
              const Align(
                alignment: Alignment.centerLeft,
                child: AppText(
                  text: 'Spendings by Category',
                  fontSize: 18,
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.selectionColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: AppColors.selectionColor.withOpacity(0.5),
                          width: 0.5,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                AppColors.selectionColor.withOpacity(0.5),
                            child: const Icon(
                              Icons.shopping_cart,
                              color: AppColors.kwhite,
                            ),
                          ),
                          const AppText(
                            text: 'Category',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          const AppText(
                            text: '₹ 2,00,09',
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ).h(50).w(50).p12();
                  },
                ),
              ),
            ],
          ).p12(),
        ));
  }
}
