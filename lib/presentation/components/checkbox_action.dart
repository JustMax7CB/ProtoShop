import 'package:flutter/material.dart';
import 'package:protoshop/theme/colors.dart';

class CheckboxAction extends StatelessWidget {
  const CheckboxAction({super.key, required this.label, required this.onChanged, required this.value});
  final String label;
  final Function(bool? value) onChanged;
  final bool value;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          side: const BorderSide(width: 1.5, color: checkBoxColor),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)),
          value: value,
          onChanged: onChanged,
        ),
        Text(label),
      ],
    );
  }
}
