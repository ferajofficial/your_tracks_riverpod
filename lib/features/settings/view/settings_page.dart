import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
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
        backgroundColor: AppColors.kSecondaryBgColor,
        appBar: AppBar(
          backgroundColor: AppColors.kSecondaryBgColor,
          title: const AppText(text: 'Settings', fontSize: 20),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                title: const AppText(
                  textAlign: TextAlign.left,
                  text: 'Dark Mode',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                trailing: Switch(
                  activeColor: AppColors.selectionColor.withOpacity(0.8),
                  value: false,
                  onChanged: (bool value) {},
                )),
            ListTile(
              title: const AppText(
                textAlign: TextAlign.left,
                text: 'Notifications',
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              trailing: Switch(
                value: true,
                activeColor: AppColors.selectionColor.withOpacity(0.8),
                onChanged: (bool value) {
                  value = !value;
                },
              ),
            ),
            ListTile(
              title: const AppText(
                textAlign: TextAlign.left,
                text: 'Language',
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.kBlack,
                    size: 20,
                  )),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              thickness: 0.5,
            ),
            ListTile(
              title: const AppText(
                textAlign: TextAlign.left,
                text: 'Currency',
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.kBlack,
                    size: 20,
                  )),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              thickness: 0.5,
            ),
            ListTile(
              title: const AppText(
                textAlign: TextAlign.left,
                text: 'About Us',
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.kBlack,
                    size: 20,
                  )),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              thickness: 0.5,
            ),
            ListTile(
              title: const AppText(
                textAlign: TextAlign.left,
                text: 'Help & Support',
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.kBlack,
                    size: 20,
                  )),
            ),
            25.heightBox,
            GlobalButton(
              buttonText: 'Log Out',
              onPressed: () {},
            ).p16().h(75).w(300).centered(),
          ],
        ).p12()));
  }
}
