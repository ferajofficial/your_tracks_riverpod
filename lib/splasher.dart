import 'package:flutter/material.dart';
import 'package:your_tracks_riverpod/features/splash/view/splash_page.dart';


class Splasher extends StatelessWidget {
  const Splasher({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const SplashView(),
    );
  }
}
