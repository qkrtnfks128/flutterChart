import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DoughnutChart3Page extends StatefulWidget {
  const DoughnutChart3Page({Key? key}) : super(key: key);

  @override
  State<DoughnutChart3Page> createState() => _DoughnutChart3PageState();
}

class _DoughnutChart3PageState extends State<DoughnutChart3Page> {

  @override
  Widget build(BuildContext context) {

    final List<_ChartData> chartData = [
      _ChartData('David', 25, Color.fromRGBO(9,0,136,1)),
      _ChartData('Steve', 38, Color.fromRGBO(147,0,119,1)),
      _ChartData('Jack', 34, Color.fromRGBO(228,0,124,1)),
      _ChartData('Others', 52, Color.fromRGBO(255,189,57,1))
    ];
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon:
              const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 18),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('도넛-3'),
            centerTitle: true,
          ),
        body:SfCircularChart(
            annotations: <CircularChartAnnotation>[
              CircularChartAnnotation(
                  width:'100%',height:'100%',
                  widget: Container(
                      child: PhysicalModel(
                          child: Container(),
                          shape: BoxShape.circle,
                          elevation: 10,
                          shadowColor: Colors.black,
                          color: const Color.fromRGBO(255, 255, 255, 1)))),
              CircularChartAnnotation(
                  widget: Container(
                      child: const Text('62%',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 25))))
            ],
            series: <CircularSeries>[
              DoughnutSeries<_ChartData, String>(
                  dataSource: chartData,
                  xValueMapper: (_ChartData data, _) => data.x,
                  yValueMapper: (_ChartData data, _) => data.y,
                  pointColorMapper:(_ChartData data,  _) => data.color,
                  radius: '100%',
                animationDuration: 1000
              )
            ]
        )
      ),
    );
  }
}
class _ChartData {
  _ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
