import 'package:flutter/material.dart';
import 'package:protoshop/theme/colors.dart';

const poppinsStyle = TextStyle(fontFamily: "Poppins");

final titleStyle = poppinsStyle.copyWith(
    fontSize: 40, fontWeight: FontWeight.w500, color: titleColor);

final subtitleStyle = poppinsStyle.copyWith(
    fontSize: 34, fontWeight: FontWeight.w600, color: subtitleColor);

final hintStyle = poppinsStyle.copyWith(
    fontSize: 15, fontWeight: FontWeight.w400, color: hintColor);

final btnTextStyle = poppinsStyle.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    letterSpacing: 0.3);

final checkBoxLabelStyle = poppinsStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.3,
    color: checkBoxLabelColor);

final textBtnStyle = poppinsStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.3,
    color: textBtnColor);

final termsTextStyle = poppinsStyle.copyWith(
    fontSize: 10,
    letterSpacing: 0.3,
    fontWeight: FontWeight.w400,
    color: termsColor.withOpacity(0.55));

final categoryTextStyle = poppinsStyle.copyWith(
  fontSize: 17,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.5,
  color: titleColor,
);