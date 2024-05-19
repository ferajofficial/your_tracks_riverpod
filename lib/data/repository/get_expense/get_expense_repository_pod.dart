import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_tracks_riverpod/data/repository/get_expense/get_expense_repository.dart';
import 'package:your_tracks_riverpod/data/repository/get_expense/i_get_expense_repository.dart';



// INSERTION PROVIDER
final expenseProvider = Provider.autoDispose<IExpenseRepository>((ref) {
  return ExpenseRepository();
});

//DELETION PROVIDER
final deleteProvider = Provider.autoDispose<IExpenseRepository>((ref) {
  return ExpenseRepository();
});


