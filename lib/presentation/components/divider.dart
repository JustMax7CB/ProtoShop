import 'package:flutter/material.dart';
import 'package:protoshop/theme/colors.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: dividerColor,
      thickness: 3,
      height: 40,
      indent: 3,
      endIndent: 3,
    );
  }
}
