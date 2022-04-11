import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class BarChart1Page extends StatelessWidget {
  const BarChart1Page({Key? key}) : super(key: key);

  static const data22 = [
    {'category': 'Shirts', 'sales': 5},
    {'category': 'Cardigans', 'sales': 20},
    {'category': 'Chiffons', 'sales': 36},
    {'category': 'Pants', 'sales': 10},
    {'category': 'Heels', 'sales': 10},
    {'category': 'Socks', 'sales': 20},
  ];

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
          title: Text('바차트'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
              width: 300,
              height: 300,
              child:Chart(
                data: data22,
                variables: {
                  'category': Variable(
                    accessor: (Map map) => map['category'] as String,
                  ),
                  'sales': Variable(
                    accessor: (Map map) => map['sales'] as num,
                  ),
                },
                elements: [IntervalElement()],
                axes: [
                  Defaults.horizontalAxis,
                  Defaults.verticalAxis,
                ],
              )
          ),
        ),
      ),
    );
  }
}
