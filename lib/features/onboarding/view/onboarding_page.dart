import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/features/onboarding/widgets/nav_button.dart';
import 'package:your_tracks_riverpod/features/onboarding/widgets/page_indicators.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingView();
  }
}

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    if (mounted) {
      setState(() {
        _currentPage = page;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryBgColor,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: [
                _buildPage(
                  image: 'assets/on1.svg',
                  title: 'Gain Control Over Your Spending',
                  description:
                      'Discover where your money goes with Your Tracks. Monitor your daily spending, categorize expenses, and gain valuable insights into your financial patterns. Make informed financial decisions and improve your savings.',
                ),
                _buildPage(
                  image: 'assets/on2.svg',
                  title: 'Simple and Effective Tracking',
                  description:
                      'Track your expenses effortlessly with Your Tracks. Monitor your spending, set budgets, and achieve your financial goals with ease. Stay on top of your finances and make informed decisions.',
                ),
                _buildPage(
                  image: 'assets/on3.svg',
                  title: 'Manage Your Money Wisely',
                  description:
                      'Take control of your finances with Your Tracks. Track daily expenses, manage your budget and view detailed reports. Ensure your financial security with this powerful and user-friendly app.',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PageIndicators(currentPage: _currentPage),
              if (_currentPage == 2) const NavButton().h(80).pOnly(bottom: 20)
            ],
          ),
        ],
      ).p12(),
    );
  }

  Widget _buildPage({required String title, required String description, required String image}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
        ).p8(),
        AppText(text: title, fontSize: 25.0, fontWeight: FontWeight.bold),
        20.heightBox,
        AppText(text: description, fontSize: 16.0),
      ],
    );
  }
}
