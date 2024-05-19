import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:multiple_result/src/result.dart';
import 'package:your_tracks_riverpod/data/model/expense_entities.dart';
import 'package:your_tracks_riverpod/data/model/expense_model.dart';
import 'package:your_tracks_riverpod/shared/exception/base_exception.dart';

import 'i_get_expense_repository.dart';

class ExpenseRepository implements IExpenseRepository {
  // INSERTION METHOD
  @override
  Future<Result<List<ExpenseModel>, APIException>> getExpenses() async {
    final expenseCollection = FirebaseFirestore.instance.collection('expenses');
    try {
      final result = await expenseCollection.get().then((value) => value.docs
          .map((e) => ExpenseModel.fromEntity(
              ExpenseEntityModel.fromDocument(e.data())))
          .toList());
      if (result.isEmpty) {
        return Error(APIException.fromMap({
          'statusCode': 404,
          'statusMessage': 'Not Found',
          'errorMessage': 'No data found'
        }));
      } else {
        return Success(result);
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  // DELETION METHOD

  @override
  Future<Result<void, APIException>> deleteExpenses(String expenseID) async {
    final expenseCollection = FirebaseFirestore.instance.collection('expenses');
    try {
      await expenseCollection.doc(expenseID).delete();
      return const Success(null);
    } catch (e) {
      log(e.toString());
      return Error(APIException.fromMap({
        'statusCode': 500,
        'statusMessage': 'Internal Server Error',
        'errorMessage': e.toString()
      }));
    }
  }
}
/*
 *
 * Future<List<Expense>> getExpenses() async {
    try {
      return await expenseCollection.get().then((value) => value.docs
          .map((e) => Expense.fromEntity(ExpenseEntity.fromDocument(e.data())))
          .toList());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
 */