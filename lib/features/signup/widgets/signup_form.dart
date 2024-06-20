import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';

class SignupForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const SignupForm({
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
        ],
      ),
    );

  }
  
}
