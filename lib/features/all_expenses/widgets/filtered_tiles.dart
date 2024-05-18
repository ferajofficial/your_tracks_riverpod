import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/features/all_expenses/widgets/expenses_cards.dart';
import 'package:your_tracks_riverpod/features/home/controllers/get_expense_pod.dart';
import 'package:your_tracks_riverpod/shared/riverpod_ext/asynvalue_easy_when.dart';

class FilteredTiles extends StatelessWidget {
  const FilteredTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final expenseAsync = ref.watch(expensePod);
        return expenseAsync.easyWhen(
          data: (expenseData) {
            return ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              separatorBuilder: (context, index) => 5.heightBox,
              itemCount: expenseData.length,
              itemBuilder: (context, index) {
                final expenseIndex = expenseData[index];
                final transactionName = expenseIndex.expenseName;
                final transactionAmount = expenseIndex.amount;
                return ExpensesCards(
                    transactionName: transactionName,
                    transactionAmount: transactionAmount);
              },
            );
          },
          loadingWidget: () => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (error, stack) => Center(
            child: AppText(
              text: 'Error: $error',
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }
}