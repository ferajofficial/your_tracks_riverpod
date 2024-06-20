import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/core/router/router.gr.dart';
import 'package:your_tracks_riverpod/features/signup/widgets/signup_form.dart';
import 'package:your_tracks_riverpod/features/signup/widgets/signup_text.dart';
import 'package:your_tracks_riverpod/shared/global_button.dart';

@RoutePage()
class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignupView();
  }
}

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kPrimaryBgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/signup.svg', height: 350).p12(),
                const SigninText().p8(),
                SignupForm(formKey: formKey).p8(),
                20.heightBox,
                GlobalButton(
                    buttonText: 'Sign Up',
                    onPressed: () {
                      context.router.push(const HomeRoute());
                      // if (formkey.currentState!.validate()) {
                      //   context.router.push(const HomeRoute());
                      // }
                    }).w(double.infinity).h(55).p8(),
                10.heightBox,
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColors.kwhiteColor,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: AppColors.ksecondaryBgColor,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const AppText(
                          text: 'Sign up with',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        20.widthBox,
                        SvgPicture.asset('assets/google.svg', height: 20),
                      ],
                    )).w(double.infinity).h(55).p8(),
              ],
            ).p12(),
          ),
        ));
  }
}
