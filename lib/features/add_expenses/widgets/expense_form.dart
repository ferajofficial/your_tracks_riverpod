import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';

class CategoryList {
  final String id;
  final String name;
  final IconData icon;

  CategoryList(this.id, this.name, this.icon);
}

class ExpenseForm extends StatefulWidget {
  final TextEditingController dateController;
  final TextEditingController nameController;
  final TextEditingController expenseController;
  final GlobalKey<FormState> formKey;

  const ExpenseForm({
    super.key,
    required this.dateController,
    required this.nameController,
    required this.expenseController,
    required this.formKey,
  });

  @override
  _ExpenseFormState createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final List<CategoryList> categories = [
    CategoryList('food', 'Food', Icons.fastfood),
    CategoryList('movie', 'Movie', Icons.movie),
    CategoryList('travel', 'Travel', Icons.directions_car),
    CategoryList('shopping', 'Shopping', Icons.shopping_cart),
    CategoryList('fuel', 'Fuel', Icons.local_gas_station),
    CategoryList('mobile', 'Mobile', Icons.phone_android),
    CategoryList('grocery', 'Grocery', Icons.local_grocery_store),
  ];

  CategoryList? selectedCategory;
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateController.text = DateFormat('dd.MM.yyyy').format(DateTime.now().toLocal());
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != DateTime.now()) {
      setState(() {
        dateController.text = DateFormat('dd.MM.yyyy').format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.expenseController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              fillColor: AppColors.kwhiteColor,
              hintText: 'Enter Expenses',
              hintStyle: TextStyle(
                textBaseline: TextBaseline.alphabetic,
                color: AppColors.kBlackColor,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              labelText: 'Amount in rupees',
              labelStyle: TextStyle(
                color: AppColors.kBlackColor,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              prefixIcon: const Icon(
                IconData(0x20B9, fontFamily: 'MaterialIcons'), // Unicode for Indian rupee symbol
                color: AppColors.kBlackColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter expense';
              }
              if (double.tryParse(value) == null) {
                return 'Please enter a valid number';
              }
              if (double.parse(value) <= 0) {
                return 'Expense must be greater than zero';
              }
              return null;
            },
          ).p(20),
          const Divider(
            thickness: 1,
          ).p(10),
          20.heightBox,
          TextFormField(
            keyboardType: TextInputType.text,
            controller: widget.nameController,
            decoration: InputDecoration(
              fillColor: AppColors.kwhiteColor,
              hintText: 'Enter Name',
              hintStyle: TextStyle(
                textBaseline: TextBaseline.alphabetic,
                color: AppColors.kBlackColor,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              labelText: 'Name',
              labelStyle: TextStyle(
                color: AppColors.kBlackColor,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a name';
              }
              return null;
            },
          ).p(10),
          10.heightBox,
          TextFormField(
            readOnly: true,
            // enabled: false,
            controller: dateController,
            decoration: InputDecoration(
              fillColor: AppColors.kwhiteColor,
              hintText: 'Select Date',
              hintStyle: TextStyle(
                textBaseline: TextBaseline.alphabetic,
                color: AppColors.kBlackColor.withOpacity(0.5),
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              labelText: 'Date',
              labelStyle: TextStyle(
                color: AppColors.kBlackColor.withOpacity(0.5),
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            // onTap: () => _selectDate(context),
          ).p(10),
          10.heightBox,
          DropdownButtonFormField<CategoryList>(
            dropdownColor: AppColors.kwhiteColor,
            hint: const Text('Select a category'),
            value: selectedCategory,
            onChanged: (CategoryList? newValue) {
              setState(() {
                selectedCategory = newValue;
              });
            },
            items: categories.map((CategoryList category) {
              return DropdownMenuItem<CategoryList>(
                value: category,
                child: Row(
                  children: [
                    Icon(category.icon),
                    const SizedBox(width: 10),
                    Text(category.name),
                  ],
                ),
              );
            }).toList(),
            decoration: InputDecoration(
              fillColor: AppColors.kwhiteColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            validator: (value) {
              if (value == null) {
                return 'Please select a category';
              }
              return null;
            },
          ).p(10),
        ],
      ),
    );
  }
}
