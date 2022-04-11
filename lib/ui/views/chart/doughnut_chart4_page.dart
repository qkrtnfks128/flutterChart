import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'dart:math';




final clearArray=[true,false,false,true,false,false];

final colorList = <Color>[
  Colors.transparent,
  Color(0xffc8c8c8),
  Color(0xffc8c8c8),
  Colors.transparent,
  Color(0xffc8c8c8),
  Color(0xffc8c8c8),
];





class DoughnutChart4Page extends StatefulWidget {
  @override
  State<DoughnutChart4Page> createState() => _DoughnutChart4PageState();
}

class _DoughnutChart4PageState extends State<DoughnutChart4Page> {
  final dataMap = <String, double>{
    "11": 1,
    "22": 1,
    "33": 1,
    "44": 1,
    "55": 1,
    "66": 1,
  };


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new,
                color: Colors.black, size: 18),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('커스텀도넛'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  activeBorder(num: 1, color:clearArray[0]?Colors.lightBlueAccent:Color(0xffc8c8c8)),
                  activeBorder(num: 2, color: clearArray[1]?Colors.lightBlueAccent:Color(0xffc8c8c8)),
                  activeBorder(num: 3, color: clearArray[2]?Colors.lightBlueAccent:Color(0xffc8c8c8)),
                  activeBorder(num: 4, color: clearArray[3]?Colors.lightBlueAccent:Color(0xffc8c8c8)),
                  activeBorder(num: 5, color: clearArray[4]?Colors.lightBlueAccent:Color(0xffc8c8c8)),
                  activeBorder(num: 6, color: clearArray[5]?Colors.lightBlueAccent:Color(0xffc8c8c8)),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 300,
                        height: 300,
                        child: Stack(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/summer.png'))),
                                )),
                            PieChart(
                              initialAngleInDegree: -90,
                              dataMap: dataMap,
                              chartType: ChartType.disc,
                              baseChartColor: Colors.grey[50]!.withOpacity(0.15),
                              colorList: colorList,
                              chartValuesOptions: ChartValuesOptions(
                                  showChartValuesInPercentage: true,
                                  showChartValues: false),
                              legendOptions: LegendOptions(showLegends: false), //
                              // totalValue: 20, //can be changed to ChartType.ring
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              TextButton(onPressed: (){}, child: Text('미션클리어',style: TextStyle(fontSize: 20),))
            ],
          ),
        ),
      ),
    );
  }
}

class activeBorder extends StatelessWidget {
  const activeBorder({Key? key, required this.num, required this.color})
      : super(key: key);
  final num;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 330,
      child: CustomPaint(
        // CustomPaint를 그리고 이 안에 차트를 그려줍니다..
        size: Size(170, 170), // CustomPaint의 크기는 가로 세로 150, 150으로 합니다.
        painter: PieChart22(
            num, // 파이 차트가 얼마나 칠해져 있는지 정하는 변수입니다.
            1.0, // 파이 차트에 들어갈 텍스트 크기를 정합니다.
            color //색
            ),
      ),
    );
  }
}

////////
class PieChart22 extends CustomPainter {
  int percentage;
  double textScaleFactor;
  Color activeColor;
  PieChart22(this.percentage, this.textScaleFactor, this.activeColor);

  @override

  void paint(Canvas canvas, Size size) {
    Paint paint = Paint() // 화면에 그릴 때 쓸 Paint를 정의합니다.
      ..color = Colors.transparent
      ..strokeWidth = 10.0 // 선의 길이를 정합니다.
      ..style =
          PaintingStyle.stroke // 선의 스타일을 정합니다. stroke면 외곽선만 그리고, fill이면 다 채웁니다.
      ..strokeCap =
          StrokeCap.round; // stroke의 스타일을 정합니다. round를 고르면 stroke의 끝이 둥글게 됩니다.
    double radius = min(
        size.width / 2 - paint.strokeWidth / 2,
        size.height / 2 -
            paint.strokeWidth / 2); // 원의 반지름을 구함. 선의 굵기에 영향을 받지 않게 보정함.
    Offset center =
        Offset(size.width / 2, size.height / 2); // 원이 위젯의 가운데에 그려지게 좌표를 정함.
    canvas.drawCircle(center, radius, paint); // 원을 그림.
    double arcAngle = ((percentage * 1) - 2.5) +
        (((percentage) * 0.045)); // 호(arc)의 각도를 정함. 정해진 각도만큼만 그리도록 함.
    paint..color = activeColor; // 호를 그릴 때는 색을 바꿔줌.
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), arcAngle,
        0.8, false, paint); // 호(arc)를 그림.

    drawText(canvas, size, "$percentage / 100"); // 텍스트를 화면에 표시함.
  }

  // 원의 중앙에 텍스트를 적음.
  void drawText(Canvas canvas, Size size, String text) {
    double fontSize = getFontSize(size, text);

    TextSpan sp = TextSpan(
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        text: text); // TextSpan은 Text위젯과 거의 동일하다.
    TextPainter tp = TextPainter(text: sp, textDirection: TextDirection.ltr);

    tp.layout(); // 필수! 텍스트 페인터에 그려질 텍스트의 크기와 방향를 정함.
    double dx = size.width / 2 - tp.width / 2;
    double dy = size.height / 2 - tp.height / 2;

    Offset offset = Offset(dx, dy);
    tp.paint(canvas, offset);
  }

  // 화면 크기에 비례하도록 텍스트 폰트 크기를 정함.
  double getFontSize(Size size, String text) {
    return size.width / text.length * textScaleFactor;
  }

  @override
  bool shouldRepaint(PieChart22 old) {
    return old.percentage != percentage;
  }
}
