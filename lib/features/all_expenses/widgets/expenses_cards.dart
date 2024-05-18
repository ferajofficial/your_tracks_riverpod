import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';

class ExpensesCards extends StatelessWidget {
  const ExpensesCards({
    super.key,
    required this.transactionName,
    required this.transactionAmount,
  });

  final String transactionName;
  final int transactionAmount;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.ksecondaryBgColor.withOpacity(0.1),
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: AppColors.ksecondaryBgColor.withOpacity(1),
            width: 0.5,
          )),
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
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_rounded,
                color: AppColors.kSecondaryColor.withOpacity(0.8),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit_rounded,
                  color: AppColors.kSecondaryColor.withOpacity(0.8),
                  size: 25,
                )),
          ],
        ),
      ).p8(),
    );
  }
}
