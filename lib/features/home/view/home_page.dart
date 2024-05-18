import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/features/home/widgets/page_header.dart';
import 'package:your_tracks_riverpod/features/home/widgets/recent_expenses.dart';
import 'package:your_tracks_riverpod/features/home/widgets/status_card.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryBgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const PageHeader(),
            10.heightBox,
            const StatusCard().h(200).p(6),
            15.heightBox,
            const AppText(
              text: 'Recent Expenses',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            15.heightBox,
            const RecentExpenses()
          ],
        ).p12(),
      ),
    );
  }
}
