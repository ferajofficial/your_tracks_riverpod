import 'package:your_tracks_riverpod/data/model/expense_entities.dart';

class ExpenseModel {
  String expenseName;
  String expenseId;
  DateTime date;
  int amount;
  String categoryId;

  ExpenseModel({
    required this.expenseName,
    required this.expenseId,
    required this.date,
    required this.amount,
    required this.categoryId,
  });

  static final empty = ExpenseModel(
    expenseName: '',
    expenseId: '',
    date: DateTime.now(),
    amount: 0,
    categoryId: '',
  );

  ExpenseEntityModel toEntity() {
    return ExpenseEntityModel(
      expenseName: expenseName,
      expenseId: expenseId,
      date: date,
      amount: amount,
      categoryId: categoryId,
    );
  }

  static ExpenseModel fromEntity(ExpenseEntityModel entity) {
    return ExpenseModel(
      expenseName: entity.expenseName ?? '',
      expenseId: entity.expenseId ?? '',
      date: entity.date ?? DateTime.now(),
      amount: entity.amount ?? 0,
      categoryId: entity.categoryId ?? '',
    );
  }
}
