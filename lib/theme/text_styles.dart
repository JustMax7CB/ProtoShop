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
    fontSize: 11,
    letterSpacing: 0.3,
    fontWeight: FontWeight.w400,
    color: termsColor.withOpacity(0.55));

final categoryTextStyle = poppinsStyle.copyWith(
  fontSize: 17,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.5,
  color: titleColor,
);

final navbarActiveItemLabelStyle = poppinsStyle.copyWith(
  fontSize: 11,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

final navbarInactiveItemLabelStyle = navbarActiveItemLabelStyle.copyWith(
  color: Colors.black.withOpacity(0.3),
);

final productLabelStyle = poppinsStyle.copyWith(
  fontSize: 13,
  color: titleColor,
  fontWeight: FontWeight.w400,
);

final productPriceStyle = productLabelStyle.copyWith(
  fontSize: 12,
);

final productDescriptionStyle = poppinsStyle.copyWith(
  fontSize: 24,
  letterSpacing: -0.4,
  color: titleColor,
  fontWeight: FontWeight.w300,
);

final productMainPriceStyle = poppinsStyle.copyWith(
  fontSize: 24,
  fontWeight: FontWeight.w500,
  color: titleColor,
);

final productMainTitleStyle = poppinsStyle.copyWith(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  color: titleColor,
);

final productBuyNowStyle = poppinsStyle.copyWith(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.12,
  color: Colors.black,
);

final favoriteProductName = poppinsStyle.copyWith(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  color: titleColor,
);

final favoriteProductDescriptionStyle = poppinsStyle.copyWith(
  fontSize: 14,
  letterSpacing: -0.4,
  color: titleColor,
  fontWeight: FontWeight.w300,
);

final favoriteAddToCartStyle = poppinsStyle.copyWith(
  fontSize: 6,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);
