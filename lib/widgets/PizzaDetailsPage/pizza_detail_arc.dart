import 'package:flutter/material.dart';

class BackgroundArc extends StatelessWidget {
  const BackgroundArc(this.background);

  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: BackgroundPainter(background),
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  BackgroundPainter(this.color);

  final Color color;

  Path path = Path();

  @override
  void paint(Canvas canvas, Size size) {
    Paint painter = Paint()..color = color;
    path.moveTo(250, 0);

    path.quadraticBezierTo(150, 125, 240, 270);
    path.quadraticBezierTo(300, 345, 450, 350);

    path.lineTo(500, 0);

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}