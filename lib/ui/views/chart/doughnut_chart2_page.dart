import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DoughnutChart2Page extends StatefulWidget {
  const DoughnutChart2Page({Key? key}) : super(key: key);

  @override
  State<DoughnutChart2Page> createState() => _DoughnutChart1PageState();
}

class _DoughnutChart1PageState extends State<DoughnutChart2Page> {
   bool choiceNum =true;
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
            title: Text('도넛-2'),
            centerTitle: true,
          ),
        body:Center(
            child: Container(
                child: SfCircularChart(
                    series: <CircularSeries>[
                      DoughnutSeries<_ChartData, String>(
                          dataSource: chartData,
                          xValueMapper: (_ChartData data, _) => data.x,
                          yValueMapper: (_ChartData data, _) => data.y,
                          pointColorMapper:(_ChartData data,  _) => data.color,
                          // Starting angle of doughnut
                          startAngle: 270,
                          // Ending angle of doughnut
                          endAngle: 90
                      )
                    ]
                )
            )
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
