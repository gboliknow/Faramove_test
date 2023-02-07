// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  AppText({
    Key? key,
    required this.fontSize,
    this.height,
    required this.text,
    this.fontWeight,
    this.color,
    this.decoration,
    this.textAlign,
  }) : super(key: key);
  final double fontSize;
  final double? height;
  final String text;
  Color? color;
  final FontWeight? fontWeight;
  TextDecoration? decoration;
  TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.mulish(
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}
