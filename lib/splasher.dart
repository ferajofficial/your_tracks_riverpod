import 'package:flutter/material.dart';

import 'package:your_tracks_riverpod/app/view/app.dart';
import 'package:your_tracks_riverpod/bootstrap.dart';
import 'package:your_tracks_riverpod/features/splash/view/splash_view.dart';

class Splasher extends StatelessWidget {
  const Splasher({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: SplashView(
        removeSpalshLoader: false,
        onInitialized: (container) {
          bootstrap(
            () => const App(),
            parent: container,
          );
        },
      ),
    );
  }
}
