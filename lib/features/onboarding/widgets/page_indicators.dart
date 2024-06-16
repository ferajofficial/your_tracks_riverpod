
import 'package:flutter/material.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';

class PageIndicators extends StatelessWidget {
  const PageIndicators({
    super.key,
    required int currentPage,
  }) : _currentPage = currentPage;

  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(3, (int index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 10,
          width: (index == _currentPage) ? 35 : 10,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: (index == _currentPage)
                ? AppColors.ksecondaryBgColor
                : AppColors.kSecondaryColor,
          ),
        );
      }),
    );
  }
}
