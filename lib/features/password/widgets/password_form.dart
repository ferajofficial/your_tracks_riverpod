import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';

class PasswordForm extends StatelessWidget {
  final TextEditingController emailController;
  const PasswordForm({
    super.key,
    required this.emailController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}
