import 'package:flutter/material.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';

class SigninText extends StatelessWidget {
  const SigninText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: 'Sign In',
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        AppText(
          text: 'Welcome back! Sign in to continue',
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}
