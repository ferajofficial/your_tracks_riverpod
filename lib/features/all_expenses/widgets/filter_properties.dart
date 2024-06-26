import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';

class FilterProperties extends StatelessWidget {
  const FilterProperties({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const AppText(text: 'Filter by : '),
        FilterChip(
          backgroundColor: AppColors.ksecondaryBgColor.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
                color: AppColors.ksecondaryBgColor.withOpacity(0.5), width: 1),
          ),
          label: const AppText(text: 'All'),
          onSelected: (bool value) {},
        ),
        5.widthBox,
        FilterChip(
          backgroundColor: AppColors.kPrimaryBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
                color: AppColors.ksecondaryBgColor.withOpacity(0.5), width: 1),
          ),
          label: const AppText(text: 'Amount'),
          onSelected: (bool value) {},
        ),
        5.widthBox,
        FilterChip(
          backgroundColor: AppColors.kPrimaryBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
                color: AppColors.ksecondaryBgColor.withOpacity(0.5), width: 1),
          ),
          label: const AppText(text: 'Date'),
          onSelected: (bool value) {},
        ),
        5.widthBox,
        FilterChip(
          backgroundColor: AppColors.kPrimaryBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
                color: AppColors.ksecondaryBgColor.withOpacity(0.5), width: 1),
          ),
          label: const AppText(text: 'Day'),
          onSelected: (bool value) {},
        )
      ],
    ).p8();
  }
}
