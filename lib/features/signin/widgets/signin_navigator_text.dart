import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/core/router/router.gr.dart';

class SigninNavigatorText extends StatelessWidget {
  const SigninNavigatorText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AppText(
          text: 'Don\'t have an account?',
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        GestureDetector(
          onTap: () {
            context.router.push(const SignupRoute());
          },
          child: const AppText(
            text: ' Sign Up',
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: AppColors.ksecondaryBgColor,
          ),
        ),
      ],
    );
  }
}
