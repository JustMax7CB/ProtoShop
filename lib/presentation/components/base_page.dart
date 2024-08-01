import 'package:flutter/material.dart';
import 'package:protoshop/presentation/components/custom_app_bar.dart';
import 'package:protoshop/theme/colors.dart';

class BasePage extends StatelessWidget {
  const BasePage(
      {super.key, required this.title, required this.body, this.bottomNavBar});

  final Widget title;
  final Widget body;
  final Widget? bottomNavBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBgColor,
      extendBodyBehindAppBar: false,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(title: title),
      body: body,
      bottomNavigationBar: bottomNavBar,
    );
  }
}
