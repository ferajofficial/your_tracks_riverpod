import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_tracks_riverpod/data/model/expense_model.dart';
import 'package:your_tracks_riverpod/data/repository/create_expense/create_expense_repo_pod.dart';
import 'package:your_tracks_riverpod/features/add_expenses/state/add_expense_state.dart';

class AddExpenseNotifier extends AutoDisposeAsyncNotifier<AddExpenseState> {
  @override
  FutureOr<AddExpenseState> build() {
    return const InitialAddExpenseState();
  }

  Future<void> addExpense(
      {required ExpenseModel expenseModel,
      required void Function() onAddExpense}) async {
    state = const AsyncData(SubmittingAddExpenseState());
    state = await AsyncValue.guard(() async {
      final result = await ref
          .watch(createExpenseProvider)
          .createExpense(expenseModel: expenseModel);
      return result.when((success) {
        onAddExpense();
        return const SubmittedAddExpenseState();
      }, (error) {
        return SubmitAddExpenseErrorState(error.errorMessage);
      });
    });
  }
}
