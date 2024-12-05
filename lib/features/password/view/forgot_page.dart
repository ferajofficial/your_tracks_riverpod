import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/features/password/widgets/password_form.dart';
import 'package:your_tracks_riverpod/shared/global_button.dart';

@RoutePage()
class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ForgotPageView();
  }
}

class ForgotPageView extends StatefulWidget {
  const ForgotPageView({super.key});

  @override
  State<ForgotPageView> createState() => _ForgotPageViewState();
}

TextEditingController email = TextEditingController();
resetPassword() async {
  await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
}

class _ForgotPageViewState extends State<ForgotPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kPrimaryBgColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.router.maybePop();
          },
        ),
      ),
      backgroundColor: AppColors.kPrimaryBgColor,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/forgot.svg', height: 350).p12(),
          10.heightBox,
          const AppText(
            text: 'Enter your registered email\nto reset your password',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ).p8(),
          20.heightBox,
          PasswordForm(emailController: email).p8(),
          20.heightBox,
          GlobalButton(
              buttonText: 'Send Link',
              onPressed: () {
                // resetPassword();
                context.showToast(
                    msg: 'An email has been sent to reset your password',
                    textSize: 16,
                    position: VxToastPosition.center,
                    bgColor: AppColors.ksecondaryBgColor,
                    textColor: AppColors.kwhiteColor);
              }).h(50).w(double.infinity).p12(),
        ],
      ).p12(),
    );
  }
}
