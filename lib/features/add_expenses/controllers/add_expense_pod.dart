import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_tracks_riverpod/features/add_expenses/controllers/notifier/add_expense_notifier.dart';
import 'package:your_tracks_riverpod/features/add_expenses/state/add_expense_state.dart';

final addExpenseRepoPod =
    AsyncNotifierProvider.autoDispose<AddExpenseNotifier, AddExpenseState>(
        AddExpenseNotifier.new);
