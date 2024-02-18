import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//background colors!!!!
const Color tWhite = Color(0xFFFFFFFF);
const Color tWhite2 = Color(0xFFFCFCFC);
const Color tWhite3 = Color(0xFFEFF5F4);
const Color tGrey = Color(0xFF9397A0);
const Color tGrey2 = Color(0xFFA7A7A7);
const Color tGrey3 = Color(0xFF7C7C7C);
const Color tGrey4 = Color(0xFFA1A1A1);
const Color tGrey5 = Color(0xFF808080);
const Color tGrey6 = Color(0xFF5F5F63);
const Color tBlack = Color(0xFF2E2D2D);
const Color tBlack2 = Color(0xFF181B19);
const Color tBlack3 = Color(0xFF141415);
const Color tBlack4 = Color(0xFF1D1D1B);

const Color tBlue = Color(0xFF5474FD);
const Color tPaleBlue = Color(0xFF83B1FF);
const Color tLightPaleBlue = Color(0xFFC1D4F9);
const Color tMidnightBlue = Color(0xFF19202D);
const Color tRed = Color(0xFFEF2121);
const Color tOrange = Color(0xFFE8BE13);

//text styles!!
final tGellixBold = TextStyle(
    fontFamily: 'Gellix', color: tMidnightBlue, fontWeight: FontWeight.w700);
final tGellixSemiBold = TextStyle(
    fontFamily: 'Gellix', color: tMidnightBlue, fontWeight: FontWeight.w600);
final tGellixMedium = TextStyle(
    fontFamily: 'Gellix', color: tMidnightBlue, fontWeight: FontWeight.w500);
final tGellixRegular = TextStyle(
    fontFamily: 'Gellix', color: tMidnightBlue, fontWeight: FontWeight.w400);

final tPoppinsBold = GoogleFonts.poppins(
  fontWeight: FontWeight.w700,
  color: tBlack3,
);
final tPoppinsSemiBold = GoogleFonts.poppins(
  fontWeight: FontWeight.w600,
  color: tBlack3,
);
final tPoppinsMedium = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: tBlack3,
);
final tPoppinsRegular = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  color: tBlack3,
);

//borders styles!!

final tBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none);

const Color borderColor = Color(0xffEEEEEE);
