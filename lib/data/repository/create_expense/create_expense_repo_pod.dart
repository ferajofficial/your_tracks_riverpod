import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_tracks_riverpod/data/repository/create_expense/create_expense_repository.dart';
import 'package:your_tracks_riverpod/data/repository/create_expense/i_create_expense_repository.dart';

final createExpenseProvider =
    Provider.autoDispose<ICreateExpenseRepoRepository>((ref) {
  return CreateExpenseRepoRepository();
});
