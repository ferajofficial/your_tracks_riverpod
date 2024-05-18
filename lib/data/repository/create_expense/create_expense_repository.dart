import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:multiple_result/src/result.dart';
import 'package:your_tracks_riverpod/bootstrap.dart';

import 'package:your_tracks_riverpod/data/model/expense_model.dart';

import 'package:your_tracks_riverpod/shared/exception/base_exception.dart';

import 'i_create_expense_repository.dart';

class CreateExpenseRepoRepository implements ICreateExpenseRepoRepository {
 
  @override
  Future<Result<void, APIException>> createExpense(
      {required ExpenseModel expenseModel}) async {
        final expenseCollection = FirebaseFirestore.instance.collection('expenses');
    try {
       
      final result = await expenseCollection
          .doc(expenseModel.expenseId)
          .set(expenseModel.toEntity().toDocument());
      // if (result == null) {
      //   return Error(APIException.fromMap({
      //     'statusCode': 404,
      //     'statusMessage': 'Not Found',
      //     'errorMessage': 'No data found'
      //   }));
      // } else {
      // }
      
        return Success(result);
    } catch (e) {
      talker.debug(e.toString());
      rethrow;
    }
  }
}
/**
 *   Future<void> createExpense(Expense expense) async {
    try {
      await expenseCollection
          .doc(expense.expenseId)
          .set(expense.toEntity().toDocument());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
 */