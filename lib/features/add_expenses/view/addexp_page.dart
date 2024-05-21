import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/bootstrap.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/data/model/expense_model.dart';
import 'package:your_tracks_riverpod/features/add_expenses/controllers/add_expense_pod.dart';
import 'package:your_tracks_riverpod/features/add_expenses/widgets/addexpense_button.dart';
import 'package:your_tracks_riverpod/features/add_expenses/widgets/expense_form.dart';
import 'package:your_tracks_riverpod/features/home/controllers/get_expense_pod.dart';

@RoutePage()
class AddExpPage extends StatelessWidget {
  const AddExpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddExpenseView();
  }
}

class AddExpenseView extends ConsumerStatefulWidget {
  const AddExpenseView({super.key});

  @override
  ConsumerState<AddExpenseView> createState() => _AddExpenseViewState();
}

class _AddExpenseViewState extends ConsumerState<AddExpenseView> {
  TextEditingController dateController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  CategoryList? selectedCategory;
  String expenseId = const Uuid().v1();

  @override
  void initState() {
    super.initState();

    dateController.text =
        DateFormat('dd.MM.yyyy').format(DateTime.now().toLocal());
  }

  void onSubmit() {
    try {
      if (dateController.text.isEmptyOrNull ||
          nameController.text.isEmptyOrNull ||
          amountController.text.isEmptyOrNull ||
          dateController.text == '' ||
          nameController.text == '' ||
          amountController.text == '') {
        context.showToast(
          msg: 'Fields are empty..!!',
          bgColor: AppColors.ksecondaryBgColor.withOpacity(0.5),
          textColor: AppColors.kwhiteColor,
          textSize: 16,
        );
      } else {
        ref.read(addExpenseRepoPod.notifier).addExpense(
            expenseModel: ExpenseModel(
              amount: int.parse(amountController.text),
              expenseName: nameController.text,
              expenseId: expenseId,
              date: DateTime.now(),
              categoryId: '',
            ),
            onAddExpense: () {
              ref.invalidate(expensePod);
              context.maybePop();
              context.showToast(
                position: VxToastPosition.center,
                msg: 'Expense Added Successfully',
                bgColor: AppColors.ksecondaryBgColor,
                textColor: AppColors.kwhiteColor,
                textSize: 16,
              );
            });
      }
    } catch (e) {
      talker.debug(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kPrimaryBgColor,
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryBgColor,
          leading: CircleAvatar(
            backgroundColor: AppColors.ksecondaryBgColor.withOpacity(0.8),
            child: IconButton(
              onPressed: () {
                context.maybePop();
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: AppColors.kwhiteColor,
              ),
            ),
          ).p8(),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppText(
              text: 'Add Your Expenses',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ).p(10),
            ExpenseForm(
              dateController: dateController,
              nameController: nameController,
              expenseController: amountController,
              formKey: formKey,
            ).p12(),
            20.heightBox,
            AddExpenseButton(onSubmit: onSubmit)
                .h(50)
                .pOnly(left: 35, right: 35),
          ],
        ))));
  }
}
