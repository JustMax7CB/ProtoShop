import 'package:flutter/material.dart';
import 'package:protoshop/theme/colors.dart';
import 'package:protoshop/utils/appbar_clip_path.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomAppBarClipper(),
      child: AppBar(
        backgroundColor: appBarBgColor,
        toolbarHeight: MediaQuery.sizeOf(context).height * 0.14,
        title: title,
        centerTitle: true,
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(200.0); // Adjust height as needed
}
