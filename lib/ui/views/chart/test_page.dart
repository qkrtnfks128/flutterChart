import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as vm;

void main() => runApp(Test());

class Test extends StatefulWidget {

  @override
  State<Test> createState() => _TestState();
}

// NOTE: You need to add "SingleTickerProviderStateMixin" for animation to work
class _TestState extends State<Test> with SingleTickerProviderStateMixin {
  late Animation _animation; // Stores animation
  late AnimationController _controller; // Stores controller

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    ); // Create a 2 second duration controller
    _animation = IntTween(begin: 0, end: 100)
        .animate(_controller); // Create the animation using controller with a tween from 0 to 360

    _controller.forward(); // Start the animation when widget is displayed
  }

  @override
  void dispose() {
    _controller.dispose(); // Don't forget to dispose your controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List angles = [180];

    double angle = 0;
    Future.delayed(new Duration(seconds: 10), (){
      setState(() {
        angle = 360;
        print("test");
      });
    });
    return AnimatedBuilder( // AnimatedBuilder using the animation
      animation: _animation,
      builder: (context, _){
        return CustomPaint(
          size: Size.square(400),
          painter: PieChartPainter(
            angles: angles,
            colors: [Colors.red],
            angle: _animation.value, // Pass _animation.value (0 to 360) as your angle
          ),
        );
      },
    );
  }
}

class PieChartPainter extends CustomPainter {
  late List angles, colors;
  late int angle;

  PieChartPainter(
      {required List angles, required List colors, required int angle}) {
    this.angles = angles;
    this.colors = colors;
    this.angle = angle;

  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint p = new Paint();
    double start = -90;
    double tmp = 0;

    for (int i = 0; i < angles.length; i++) {
        p.color = colors[i];

      if (tmp + angles[i] < angle) {
        canvas.drawArc(Rect.fromLTRB(0, 0, size.width, size.height),
            vm.radians(start),4.5, true, p);

        start = start + angles[i];
        tmp = tmp + angles[i];
      }
      else {
        double x = angle - tmp;
        canvas.drawArc(Rect.fromLTRB(0, 0, size.width, size.height),
            vm.radians(start), vm.radians(x), true, p);
        return;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
