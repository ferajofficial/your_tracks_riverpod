import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/core/router/router.gr.dart';

class SigninForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const SigninForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.email_rounded),
              fillColor: AppColors.kwhiteColor,
              hintText: 'Enter Email',
              hintStyle: TextStyle(
                textBaseline: TextBaseline.alphabetic,
                color: AppColors.kBlackColor,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              labelText: 'Email',
              labelStyle: TextStyle(
                color: AppColors.kBlackColor,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.kBlackColor,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter email';
              }
              return null;
            },
          ),
          10.heightBox,
          TextFormField(
            controller: passwordController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock_person_rounded),
              fillColor: AppColors.kwhiteColor,
              hintText: 'Enter Password',
              hintStyle: TextStyle(
                textBaseline: TextBaseline.alphabetic,
                color: AppColors.kBlackColor,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              labelText: 'Password',
              labelStyle: TextStyle(
                color: AppColors.kBlackColor,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a password';
              }
              return null;
            },
          ),
          5.heightBox,
          GestureDetector(
            onTap: () {
              context.navigateTo(const ForgotRoute());
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppText(
                  text: 'Forgot Password?',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.ksecondaryBgColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
