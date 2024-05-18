import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_tracks_riverpod/data/repository/get_expense/get_expense_repository.dart';
import 'package:your_tracks_riverpod/data/repository/get_expense/i_get_expense_repository.dart';

final expenseProvider = Provider.autoDispose<IExpenseRepository>((ref) {
  return ExpenseRepository();
});
