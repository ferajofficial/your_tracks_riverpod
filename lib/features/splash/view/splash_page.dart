import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }
}

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 5 seconds
    Timer(
      const Duration(seconds: 3),
      () {
        // context.router.replace(const NavBarRoute());
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash view'),
        // child: AppText(text: 'Splash view'),
      ),
    );
  }
}
