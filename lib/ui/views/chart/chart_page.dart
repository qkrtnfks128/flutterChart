import 'package:flutter/material.dart';
import './doughnut_chart1_page.dart';
import './doughnut_chart2_page.dart';

import './doughnut_chart3_page.dart';
import './doughnut_chart4_page.dart';
import './bar_chart1_page.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          title:Text('차트페이지'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(text:'도넛차트1',route:DoughnutChart1Page()),
                ButtonWidget(text:'반도넛차트',route:DoughnutChart2Page() ),
                ButtonWidget(text:'중간글자도넛차트',route:DoughnutChart3Page()),

                ButtonWidget(text:'커스텀도넛',route:DoughnutChart4Page()),
                ButtonWidget(text:'바차트',route:BarChart1Page()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,required this.text,required this.route
  }) : super(key: key);
final String text;
final route;
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => route),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(text)
            )));
  }
}
