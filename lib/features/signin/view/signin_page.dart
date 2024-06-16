import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/core/router/router.gr.dart';
import 'package:your_tracks_riverpod/features/signin/widgets/signin_form.dart';
import 'package:your_tracks_riverpod/features/signin/widgets/signin_texts.dart';
import 'package:your_tracks_riverpod/shared/global_button.dart';

@RoutePage()
class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SigninView();
  }
}

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kPrimaryBgColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/signin.svg', height: 350).p12(),
              const SigninText().p8(),
              SigninForm(
                formKey: formkey,
                // emailController: TextEditingController(),
                // passwordController: TextEditingController(),
              ).p8(),
              GlobalButton(
                  buttonText: 'Sign In',
                  onPressed: () {
                    
                    // if (formkey.currentState!.validate()) {
                    //   context.router.push(const HomeRoute());
                    // }
                  }).w(double.infinity).h(55).p8(),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppText(
                    text: 'Don\'t have an account?',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(const SignupRoute());
                    },
                    child: const AppText(
                      text: ' Sign Up',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColors.ksecondaryBgColor,
                    ),
                  ),
                ],
              ),
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
                        text: 'Sign in with',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      20.widthBox,
                      SvgPicture.asset('assets/google.svg', height: 20),
                    ],
                  )).w(double.infinity).h(55).p8(),
            ],
          ).p12(),
        ));
  }
}
