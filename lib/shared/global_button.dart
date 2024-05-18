import 'package:flutter/material.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';


class GlobalButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const GlobalButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.selectionColor.withOpacity(0.8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: AppText(
            text: buttonText,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.kwhite));
  }
}
