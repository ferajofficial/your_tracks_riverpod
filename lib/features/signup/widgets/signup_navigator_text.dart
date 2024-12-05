import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/core/router/router.gr.dart';

class SignupNavigatorText extends StatelessWidget {
  const SignupNavigatorText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AppText(
          text: 'Already have an account?',
          fontSize: 15,
          // fontWeight: FontWeight.w600,
        ),
        10.widthBox,
        GestureDetector(
          onTap: () {
            context.router.push(const SigninRoute());
          },
          child: const AppText(
            text: 'Sign In',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.ksecondaryBgColor,
          ),
        ),
      ],
    );
  }
}
