import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/features/settings/widgets/settings_tile.dart';
import 'package:your_tracks_riverpod/shared/global_button.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kPrimaryBgColor,
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryBgColor,
          title: const AppText(text: 'Settings', fontSize: 20),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          children: [
            const SettingsTiles().p12(),
            GlobalButton(
              buttonText: 'Sign Out',
              onPressed: () {},
            ).p16().h(75).w(300).centered(),
          ],
        )));
  }
}
