import 'package:flutter/material.dart';
import 'package:protoshop/theme/colors.dart';

class ElevatedBtnWShadow extends StatelessWidget {
  const ElevatedBtnWShadow({
    super.key,
    required this.onPressed,
    required this.content,
    required this.height,
    this.horizontalMargin = 30,
  });

  final Function() onPressed;
  final Widget content;
  final double height;
  final double horizontalMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
      alignment: Alignment.center,
      width: double.maxFinite,
      height: height,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.44),
                offset: Offset(2, 1),
                blurRadius: 0.8,
                spreadRadius: 0)
          ]),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 45),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.9, color: btnStrokeColor),
                  borderRadius: BorderRadius.circular(5))),
          child: content),
    );
  }
}
