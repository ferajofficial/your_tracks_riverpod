import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/features/settings/widgets/app_tile.dart';

class SettingsTiles extends StatelessWidget {
  const SettingsTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AppTile(
          tileText: 'Dark Mode',
          trailingWidget: Switch(
              activeColor: AppColors.ksecondaryBgColor.withOpacity(0.8),
              value: false,
              onChanged: (bool value) {}),
        ),
        AppTile(
          tileText: 'Notifications',
          trailingWidget: Switch(
            value: true,
            activeColor: AppColors.ksecondaryBgColor.withOpacity(0.8),
            onChanged: (bool value) {
              value = !value;
            },
          ),
        ),
        AppTile(
          tileText: 'Language',
          trailingWidget: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.kBlackColor,
                size: 20,
              )),
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
          thickness: 0.5,
        ),
        AppTile(
          tileText: 'Currency',
          trailingWidget: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.kBlackColor,
                size: 20,
              )),
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
          thickness: 0.5,
        ),
        AppTile(
          tileText: 'About Us',
          trailingWidget: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.kBlackColor,
                size: 20,
              )),
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
          thickness: 0.5,
        ),
        AppTile(
          tileText: 'Help & Support',
          trailingWidget: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.kBlackColor,
                size: 20,
              )),
        ),
        30.heightBox,
      ],
    );
  }
}
