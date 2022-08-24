import 'package:flutter/material.dart';

class MyPainter extends StatefulWidget {
  const MyPainter({Key? key}) : super(key: key);

  @override
  State<MyPainter> createState() => _MyPainterState();
}

class _MyPainterState extends State<MyPainter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: 300,
        height: 300,
        child: CustomPaint(
          size: Size(300, 300),
          painter: YourPainter(),
        ),
      ),
    );
  }
}

class YourPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.yellow;
    paint.strokeWidth = 2.0;
    Path path = Path();
    path.moveTo(0, size.height / 2);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0, size.width * 0.7, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
