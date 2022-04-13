import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'dart:math';
import 'package:flutter_svg/svg.dart';

class CustomPiePage extends StatefulWidget {
  @override
  State<CustomPiePage> createState() => _CustomPiePageState();
}

class _CustomPiePageState extends State<CustomPiePage> {
  final clearArray = [false, false, false, true, false, false];

  //6조각 파이그래프
  final dataMap = <String, double>{
    "11": 1,
    "22": 1,
    "33": 1,
    "44": 1,
    "55": 1,
    "66": 1,
  };

  void missionClear() {
    var intValue = Random().nextInt(6); // Value is >= 0.0 and < 5.0.
    if (clearArray.contains(false)) {
      //false가 있으면 실행
      setState(() {
        clearArray[intValue] ? missionClear() : clearArray[intValue] = true;
      });
    }
    //else - 미션이 모두 클리어된 경우
  }

  @override
  void initState() {
    super.initState();
  }

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
                  for (num i = 1; i < 7; i++)
                    ActiveBorder(num: i, color: Color(0xfff3f3f3)),
                  for (int j = 0; j < 6; j++)
                    AnimatedOpacity(
                      opacity: clearArray[j] ? 1 : 0,
                      duration: Duration(milliseconds: 1000),
                      child: ActiveBorder(
                          num: j + 1, color: Colors.lightBlueAccent),
                    ),
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
                                      border: Border.all(
                                          color: Color(0xfff3f3f3), width: 7),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/summer.png'))),
                                )),
                            for (double j = 0; j < 6; j++)
                              AnimatedOpacity(
                                opacity: clearArray[j.round()] ? 0 : 1,
                                duration: Duration(milliseconds: 800),
                                child: PieChart(
                                  animationDuration: Duration(milliseconds: 0),
                                  initialAngleInDegree: -90 + (60 * j),
                                  dataMap: dataMap,
                                  chartType: ChartType.disc,
                                  colorList: [
                                    Color(0xfff3f3f3),
                                    Colors.transparent,
                                    Colors.transparent,
                                    Colors.transparent,
                                    Colors.transparent,
                                    Colors.transparent
                                  ],
                                  chartValuesOptions: ChartValuesOptions(
                                      showChartValuesInPercentage: true,
                                      showChartValues: false),
                                  legendOptions:
                                      LegendOptions(showLegends: false), //
                                  // totalValue: 20, //can be changed to ChartType.ring
                                ),
                              ),
                            Center(
                                child: SvgPicture.asset(
                              'assets/images/pie-line.svg',
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {
                    missionClear();
                  },
                  child: Text(
                    '미션클리어',
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
//floating border
class ActiveBorder extends StatelessWidget {
  const ActiveBorder({Key? key, required this.num, required this.color})
      : super(key: key);
  final num;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 310,
      child: CustomPaint(
        // CustomPaint를 그리고 이 안에 차트를 그려줍니다..
        painter: ActiveBorderPaint(
          percentage: num, // 파이 차트가 얼마나 칠해져 있는지 정하는 변수입니다.
          activeColor: color, //색
        ),
      ),
    );
  }
}

////////
class ActiveBorderPaint extends CustomPainter {
  int percentage;
  Color activeColor;
  ActiveBorderPaint({required this.percentage, required this.activeColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint() // 화면에 그릴 때 쓸 Paint를 정의합니다.
      ..color = Colors.transparent
      ..strokeWidth = 5.0 // 선의 길이를 정합니다.
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
  }


  @override
  bool shouldRepaint(ActiveBorderPaint oldDelegate) {
    return true;
  }
}
