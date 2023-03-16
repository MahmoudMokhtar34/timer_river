import 'package:flutter/material.dart';

import 'dart:math';

class MyClock extends StatelessWidget {
  const MyClock({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 176, 224, 234),
            boxShadow: [
              BoxShadow(
                blurRadius: 30,
                color: Color.fromARGB(255, 176, 224, 234),
              )
            ]),
        //color: Colors.black26,
        child: Stack(
          alignment: Alignment.center,
          children: [
            const FractionallySizedBox(
                heightFactor: .77,
                widthFactor: .77,
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  value: 0.25,
                  color: Color.fromARGB(255, 94, 97, 156),
                )),
            FractionallySizedBox(
              heightFactor: .95,
              widthFactor: .95,
              child: CustomPaint(
                painter: MyClockPainter(),
              ),
            ),
            const FractionallySizedBox(
              heightFactor: .65,
              widthFactor: .65,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
                child: Text(
                  '00:00:00',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClockPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    //Offset center = Offset(centerX, centerY);
    double radius = min(centerY, centerX);

    Paint maindashPaint = Paint()
      ..color = const Color.fromARGB(255, 94, 97, 156)
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    Paint secdashPaint = Paint()
      ..color = const Color.fromARGB(145, 120, 90, 90)
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    // Paint tickPaint = Paint()
    //   ..color = Colors.red[400]!
    //   ..strokeWidth = 1
    //   ..strokeCap = StrokeCap.butt;
    // double tickend = radius - 40;
    // double tickstart = radius - 50;

    // for (var i = 0; i < 360; i += 6) {
    //   double x1 = centerX - tickend * cos(i * pi / 180);
    //   double y1 = centerX - tickend * sin(i * pi / 180);
    //   double x2 = centerX - tickstart * cos(i * pi / 180);
    //   double y2 = centerX - tickstart * sin(i * pi / 180);
    //   canvas.drawLine(Offset(x1, y1), Offset(x2, y2), tickPaint);
    // }

    double outerRadius = radius * .95;
    double innerRadius = radius * .9;
    for (int i = 0; i < 360; i += 30) {
      double x1 = centerX - outerRadius * cos(i * pi / 180);
      double y1 = centerX - outerRadius * sin(i * pi / 180);
      double x2 = centerX - innerRadius * cos(i * pi / 180);
      double y2 = centerX - innerRadius * sin(i * pi / 180);
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), maindashPaint);
    }
    for (int i = 0; i < 360; i += 6) {
      double x1 = centerX - outerRadius * 1 * cos(i * pi / 180);
      double y1 = centerX - outerRadius * 1 * sin(i * pi / 180);
      double x2 = centerX - innerRadius * cos(i * pi / 180);
      double y2 = centerX - innerRadius * sin(i * pi / 180);
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), secdashPaint);
    }
  }

  @override
  bool shouldRepaint(MyClockPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MyClockPainter oldDelegate) => false;
}
