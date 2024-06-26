import 'package:multiple_result/multiple_result.dart';
import 'package:your_tracks_riverpod/data/model/expense_model.dart';
import 'package:your_tracks_riverpod/shared/exception/base_exception.dart';

abstract class IExpenseRepository {
  // INSERTION OF DATA
  Future<Result<List<ExpenseModel>, APIException>> getExpenses();

  // DELETION OF DATA
  Future<Result<void, APIException>> deleteExpenses(String expenseID);
}
