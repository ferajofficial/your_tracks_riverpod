import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.ksecondaryBgColor.withOpacity(0.6),
            child: IconButton(
                onPressed: () {
                  // context.navigateTo(const ProfileRoute());
                },
                icon: const Icon(Icons.person_rounded,
                    color: AppColors.kwhiteColor, size: 35))),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: 'Welcome',
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            AppText(
              textAlign: TextAlign.left,
              text: 'Jhon Wick',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ],
        ).p(5)
      ],
    );
  }
}
