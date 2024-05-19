import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({
    super.key,
    required this.transactionName,
    required this.transactionAmount,
    required this.onPressed,
  });

  final String transactionName;
  final int transactionAmount;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kwhiteColor,
      surfaceTintColor: AppColors.kPrimaryBgColor,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        // side: BorderSide(
        //   color: AppColors.ksecondaryBgColor.withOpacity(1),
        //   width: 1,
        // )
      ),
      child: ListTile(
        // tileColor: AppColors.kPrimaryBgColor,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
        trailing: CircleAvatar(
          backgroundColor: AppColors.ksecondaryBgColor.withOpacity(0.5),
          child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.delete_rounded,
              color: AppColors.kwhiteColor,
            ),
          ),
        ),
      ).p8(),
    );
  }
}
