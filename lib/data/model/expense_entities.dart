import 'package:cloud_firestore/cloud_firestore.dart';

class ExpenseEntityModel {
  String? expenseName;
  String? expenseId;
  DateTime? date;
  int? amount;
  String? categoryId;

  ExpenseEntityModel({
    this.expenseName,
    this.expenseId,
    this.date,
    this.amount,
    this.categoryId,
  });

  Map<String, Object?> toDocument() {
    return {
      'expenseName': expenseName,
      'expenseId': expenseId,
      'date': date,
      'amount': amount,
      'categoryId': categoryId,
    };
  }

  static ExpenseEntityModel fromDocument(Map<String, dynamic> doc) {
    return ExpenseEntityModel(
      expenseName: doc['expenseName'] as String?,
      expenseId: doc['expenseId'] as String?,
      date: (doc['date'] as Timestamp?)?.toDate(),
      amount: (doc['amount'] as int?) ?? 0,
      categoryId: doc['categoryId'] as String?,
    );
  }
}
