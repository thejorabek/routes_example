import 'package:flutter/material.dart';
import 'dart:math' as math;

class PaintPage extends StatefulWidget {
  const PaintPage({Key? key}) : super(key: key);

  @override
  State<PaintPage> createState() => _PaintPageState();
}

class _PaintPageState extends State<PaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomPaint(
                size: Size(80, 200),
                painter: Good(),
              ),
              CustomPaint(
                size: Size(80, 200),
                painter: Bad(),
              ),
              CustomPaint(
                size: Size(80, 200),
                painter: Good(),
              ),
              CustomPaint(
                size: Size(80, 200),
                painter: Good(),
              ),
              CustomPaint(
                size: Size(80, 200),
                painter: Good(),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class Good extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    final eyePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;
    canvas.drawCircle(Offset(37, 145), 4, eyePaint);
    canvas.drawCircle(Offset(62, 145), 4, eyePaint);
    canvas.drawCircle(Offset(50, 150), 30, paint);
    canvas.drawLine(Offset(35, 165), Offset(65, 165), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Bad extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(35, 125, 65, 150);
    final startAngle = math.pi;
    final sweepAngle = math.pi;
    final useCenter = false;
    final paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    final arcPaint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    final eyePaint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;
    canvas.drawCircle(Offset(37, 145), 4, eyePaint);
    canvas.drawCircle(Offset(62, 145), 4, eyePaint);
    canvas.drawCircle(Offset(50, 150), 30, paint);
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, arcPaint);
    final arc1 = Path();
    arc1.moveTo(size.width * .8, size.height * .8);
    arc1.arcToPoint(Offset(size.width * .45, size.height * .8), radius: Radius.circular(10), clockwise: false);
    canvas.drawPath(arc1, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
