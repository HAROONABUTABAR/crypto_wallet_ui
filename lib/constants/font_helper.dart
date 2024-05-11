import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontHelper {
  // Edu NSW ACT Foundation
  static TextStyle font20BoldWhite = GoogleFonts.robotoMono(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);

  static TextStyle font18GreyW300 = GoogleFonts.robotoMono(
      fontSize: 18, fontWeight: FontWeight.w300, color: Colors.grey);

  static TextStyle font16Regular =
      GoogleFonts.robotoMono(fontSize: 16, fontWeight: FontWeight.normal);

  static TextStyle font18Medium =
      GoogleFonts.robotoMono(fontSize: 18, fontWeight: FontWeight.w500);

  static TextStyle font28SemiBoldWhite = GoogleFonts.robotoMono(
      fontSize: 28, fontWeight: FontWeight.w600, color: Colors.white);

  static TextStyle font36ExtraBold =
      GoogleFonts.robotoMono(fontSize: 36, fontWeight: FontWeight.w800);
}
