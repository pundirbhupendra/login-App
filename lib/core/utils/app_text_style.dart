import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_task_app/core/utils/app_colors.dart';

class AppTextStyles {
  static TextStyle heading1({
    Color color = AppTextColors.primaryColor,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    return GoogleFonts.poppins(
      fontSize: 24.0,
      color: color,
      fontWeight: fontWeight,
    );
  }

  static TextStyle heading2({
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    return GoogleFonts.poppins(
      fontSize: 20.0,
      color: color,
      fontWeight: fontWeight,
    );
  }

  static TextStyle bodyText({
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.poppins(
      fontSize: 16.0,
      color: color,
      fontWeight: fontWeight,
    );
  }

  static TextStyle bodyTextWithWeight({
    Color color = AppTextColors.primaryColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = 16.0,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }
}
