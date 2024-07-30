import 'package:flutter/material.dart';

class CustomAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Top left rounded corner
    path.moveTo(0, 20);
    path.quadraticBezierTo(0, 0, 20, 0);

    // Top edge
    path.lineTo(size.width - 20, 0);

    // Top right rounded corner
    path.quadraticBezierTo(size.width, 0, size.width, 20);

    // Right edge
    path.lineTo(size.width, size.height - 40);

    // Bottom curved edge
    path.quadraticBezierTo(
        size.width * 0.75, size.height - 30, size.width * 0.5, size.height - 60);
    path.quadraticBezierTo(size.width * 0.25, size.height - 90, 0, size.height - 30);

    // Close the path
    path.lineTo(0, size.height - 40);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
