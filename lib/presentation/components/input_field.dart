import 'package:flutter/material.dart';
import 'package:protoshop/theme/colors.dart';
import 'package:protoshop/theme/text_styles.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscure = false,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscure;
  final Widget? suffixIcon;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: inputFieldHeight,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          offset: Offset(0, 2),
          color: Color(0x61EFEFEF),
          spreadRadius: -2.0,
          blurRadius: 4.0,
        ),
      ], borderRadius: BorderRadius.circular(6)),
      child: TextFormField(
        onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
        keyboardType: keyboardType,
        obscureText: obscure,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: hintStyle,
          fillColor: inputFieldBgColor.withOpacity(0.2),
          filled: true,
          enabledBorder: enabledBorderStyle,
          focusedBorder: focusedBorderStyle,
          errorBorder: errorBorderStyle,
        ),
      ),
    );
  }
}

final enabledBorderStyle = OutlineInputBorder(
    borderSide: const BorderSide(color: inputFieldBorderColor, width: 0.8),
    borderRadius: BorderRadius.circular(6));

final focusedBorderStyle = enabledBorderStyle.copyWith(
  borderSide: const BorderSide(color: inputFieldBorderColorFocused, width: 0.8),
);

final errorBorderStyle = enabledBorderStyle.copyWith(
  borderSide: const BorderSide(color: inputFieldBorderColorError, width: 0.8),
);

const double inputFieldHeight = 55;