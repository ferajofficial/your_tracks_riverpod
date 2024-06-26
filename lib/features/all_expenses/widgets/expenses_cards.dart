import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({
    super.key,
    required this.transactionName,
    required this.transactionAmount,
    required this.onPressed2,
    required this.onPressed1,
  });

  final String transactionName;
  final int transactionAmount;

  final VoidCallback onPressed1;
  final VoidCallback onPressed2;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kwhiteColor,
      surfaceTintColor: AppColors.ksecondaryBgColor,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: AppColors.ksecondaryBgColor.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: ListTile(
        title: AppText(
          textAlign: TextAlign.left,
          text: transactionName,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        subtitle: Row(
          children: [
            const Icon(
              Icons.currency_rupee,
              size: 18,
            ),
            AppText(
              color: AppColors.kExpIconColor,
              text: transactionAmount.toString(),
              textAlign: TextAlign.left,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.ksecondaryBgColor.withOpacity(0.8),
              child: GestureDetector(
                onTap: () {
                  onPressed1();
                },
                child: Image.asset(
                  'assets/edit.png',
                  color: AppColors.kwhiteColor,
                ).h(30),
              ),
            ),
            CircleAvatar(
              backgroundColor: AppColors.ksecondaryBgColor.withOpacity(0.8),
              child: GestureDetector(
                onTap: () {
                  onPressed2();
                },
                child: Image.asset(
                  'assets/delete.png',
                  color: AppColors.kwhiteColor,
                ).h(30),
              ),
            ),
          ],
        ).w(100),
      ).p8(),
    );
  }
}
