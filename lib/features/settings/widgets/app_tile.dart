import 'package:flutter/material.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';

class AppTile extends StatelessWidget {
  final String tileText;
  final Widget trailingWidget;
  const AppTile({
    super.key,
    required this.tileText,
    required this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AppText(
        textAlign: TextAlign.left,
        text: tileText,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      trailing: trailingWidget,
    );
  }
}
