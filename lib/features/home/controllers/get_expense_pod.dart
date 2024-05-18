import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_tracks_riverpod/bootstrap.dart';
import 'package:your_tracks_riverpod/data/model/expense_model.dart';
import 'package:your_tracks_riverpod/data/repository/expense/expense_repository_pod.dart';

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
