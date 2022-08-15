import 'package:flutter/material.dart';

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.5, size.height);

    final firstControlPoint = Offset(size.width * 0.6, size.height);
    final firstEndPoint = Offset(size.width * 0.6, size.height - 40.0);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    final tControlPoint = Offset(size.width * 0.6, size.height - 50);
    final tEndPoint = Offset(size.width * 0.7, size.height * 0.83);
    path.quadraticBezierTo(
      tControlPoint.dx,
      tControlPoint.dy,
      tEndPoint.dx,
      tEndPoint.dy,
    );

    final secondControlPoint = Offset(size.width * 0.95, size.height - 40);
    final secondEndPoint = Offset(size.width, size.height - 65);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
