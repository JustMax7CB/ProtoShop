import 'package:flutter/material.dart';
import 'package:protoshop/presentation/components/CustomAppBar.dart';
import 'package:protoshop/theme/colors.dart';

class BasePage extends StatelessWidget {
  const BasePage({super.key, required this.title, required this.body});

  final Widget title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBgColor,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(title: title),
      body: body,
    );
  }
}
