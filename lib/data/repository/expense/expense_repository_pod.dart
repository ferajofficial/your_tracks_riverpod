import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_tracks_riverpod/data/repository/expense/expense_repository.dart';
import 'package:your_tracks_riverpod/data/repository/expense/i_expense_repository.dart';

final expenseProvider = Provider<IExpenseRepository>((ref) {
  return ExpenseRepository();
});