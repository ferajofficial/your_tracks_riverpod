import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/core/router/router.gr.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: AppColors.ksecondaryBgColor,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {
            context.router.replace(const SignupRoute());
          },
          icon: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColors.kwhiteColor,
          ),
        ).p8());
  }
}
