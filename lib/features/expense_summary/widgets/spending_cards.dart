import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';

class SpendingCards extends StatelessWidget {
  final List<Map<String, String>> spendingData;

  const SpendingCards({
    super.key,
    required this.spendingData,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: spendingData.length,
      itemBuilder: (BuildContext context, int index) {
        final item = spendingData[index];
        return Container(
          decoration: BoxDecoration(
              color: AppColors.kPrimaryBgColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: AppColors.kBlackColor.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(0, 5),
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.ksecondaryBgColor.withOpacity(0.5),
                child: const Icon(
                  Icons.shopping_cart,
                  color: AppColors.kwhiteColor,
                ),
              ),
              AppText(
                text: item['title'] ?? '',
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: AppColors.kBlackColor.withOpacity(0.5),
              ),
              AppText(
                text: item['amount'] ?? '',
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ).h(50).w(50).p(10);
      },
    );
  }
}
