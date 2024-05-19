import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_tracks_riverpod/bootstrap.dart';
import 'package:your_tracks_riverpod/data/model/expense_model.dart';
import 'package:your_tracks_riverpod/data/repository/get_expense/get_expense_repository_pod.dart';

final expensePod = FutureProvider.autoDispose<List<ExpenseModel>>((ref) async {
  final result = await ref.watch(expenseProvider).getExpenses();
  return result.when(
    (expenseModel) {
      talker.debug(expenseModel);
      return expenseModel;
    },
    (error) => throw Exception(
      error.toString(),
    ),
  );
});

// Future provider for deleting expenses
final deleteExpensePod =
    FutureProvider.family.autoDispose<void, String>((ref, expenseID) async {
  final result = await ref.watch(deleteProvider).deleteExpenses(expenseID);
  result.when(
    (success) {
      ref.invalidate(expensePod);
    },
    (error) => throw Exception(
      error.errorMessage,
    ),
  );
});
