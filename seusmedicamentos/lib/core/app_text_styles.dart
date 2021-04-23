import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seusmedicamentos/core/app_colors.dart';

class AppTextStyles {
  static final TextStyle title = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle heading = GoogleFonts.raleway(
      color: AppColors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500,
   );

   static final TextStyle headingBold = GoogleFonts.raleway(
      color: AppColors.black,
      fontSize: 20,
      fontWeight: FontWeight.w700,
   );

   static final TextStyle headingGrey = GoogleFonts.raleway(
      color: AppColors.lightGrey,
      fontSize: 20,
      fontWeight: FontWeight.w500,
   );

   static final TextStyle body = GoogleFonts.raleway(
      color: AppColors.black,
      fontSize: 18,
      fontWeight: FontWeight.w600,
   );

   static final TextStyle bodyGrey = GoogleFonts.raleway(
      color: AppColors.darkGrey,
      fontSize: 16,
      fontWeight: FontWeight.w600,
   );
}
