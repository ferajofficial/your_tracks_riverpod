import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/features/add_expenses/widgets/expense_form.dart';
import 'package:your_tracks_riverpod/shared/global_button.dart';

@RoutePage()
class AddExpPage extends StatelessWidget {
  const AddExpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddExpenseView();
  }
}

class AddExpenseView extends StatefulWidget {
  const AddExpenseView({super.key});

  @override
  State<AddExpenseView> createState() => _AddExpenseViewState();
}

class _AddExpenseViewState extends State<AddExpenseView> {
  TextEditingController date = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController expenseC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  CategoryList? selectedCategory;

  @override
  void initState() {
    super.initState();

    date.text = DateFormat('dd.MM.yyyy').format(DateTime.now().toLocal());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kPrimaryBgColor,
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryBgColor,
          leading: CircleAvatar(
            backgroundColor: AppColors.ksecondaryBgColor.withOpacity(0.5),
            child: IconButton(
              onPressed: () {
                context.maybePop();
              },
              icon: const Icon(
                Icons.arrow_back,
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
              dateController: date,
              nameController: name,
              expenseController: expenseC,
              formKey: formKey,
            ).p12(),
            20.heightBox,
            GlobalButton(
              buttonText: 'Save',
              onPressed: () {
                if (formKey.currentState!.validate()) {}
              },
            ).p12().h(80),
          ],
        ))));
  }
}
