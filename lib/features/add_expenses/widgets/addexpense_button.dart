import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_tracks_riverpod/features/add_expenses/controllers/add_expense_pod.dart';
import 'package:your_tracks_riverpod/features/add_expenses/state/add_expense_state.dart';
import 'package:your_tracks_riverpod/shared/global_button.dart';
import 'package:your_tracks_riverpod/shared/riverpod_ext/asynvalue_easy_when.dart';

class AddExpenseButton extends ConsumerWidget {
  final VoidCallback onSubmit;
  const AddExpenseButton({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addExpenseFormAsync = ref.watch(addExpenseRepoPod);

    return addExpenseFormAsync.easyWhen(
      data: (addExpenseState) {
        return switch (addExpenseState) {
          InitialAddExpenseState() => GlobalButton(
              buttonText: 'Add Expenses',
              onPressed: onSubmit,
            ),
          SubmittingAddExpenseState() => GlobalButton(
              buttonText: 'Adding',
              isLoading: true,
              onPressed: () {},
            ),
          SubmittedAddExpenseState() => GlobalButton(
              buttonText: 'Added',
              onPressed: onSubmit,
            ),
          SubmitAddExpenseErrorState() => GlobalButton(
              buttonText: 'Retry',
              onPressed: onSubmit,
            ),
          NotSubmittedAddExpenseState() =>
            GlobalButton(buttonText: 'Not Added', onPressed: onSubmit),
        };
      },
    );
  }
}
