import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';

class SpendingCards extends StatelessWidget {
  const SpendingCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
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
              const AppText(
                text: 'Category',
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              const AppText(
                text: '₹ 2,00,09',
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ).h(50).w(50).p(10);
      },
    );
  }
}
