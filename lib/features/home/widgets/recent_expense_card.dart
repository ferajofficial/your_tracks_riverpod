import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';

class RecentExpensesCards extends StatelessWidget {
  const RecentExpensesCards({
    super.key,
    required this.transactionName,
    required this.transactionAmount,
    required this.date,
  });

  final String transactionName;
  final int transactionAmount;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.ksecondaryBgColor.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: AppColors.ksecondaryBgColor.withOpacity(0.5),
          width: 0.5,
        ),
      ),
      elevation: 0,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        leading: CircleAvatar(
          backgroundColor: AppColors.ksecondaryBgColor.withOpacity(0.5),
          child: const Icon(
            Icons.shopify_rounded,
            color: AppColors.kwhiteColor,
          ),
        ),
        title: AppText(
          textAlign: TextAlign.left,
          text: transactionName,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.currency_rupee_rounded,
                  size: 20,
                ),
                AppText(
                  textAlign: TextAlign.right,
                  text: transactionAmount.toString(),
                  color: AppColors.kExpIconColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ).w(60),
            AppText(
              textAlign: TextAlign.right,
              text: date.toDateString(),
              color: AppColors.kBlackColor.withOpacity(0.4),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ).centered(),
    ).h(80);
  }
}
