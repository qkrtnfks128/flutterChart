import 'package:flutter/material.dart';

class NavigatePage extends StatefulWidget {
  const NavigatePage({Key? key}) : super(key: key);

  @override
  State<NavigatePage> createState() => _NavigatePageState();
}

class _NavigatePageState extends State<NavigatePage> {
  int currentIndex = 0;

  List viewPage = [
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("init"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_day),
            label: "루틴",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pool_sharp),
            label: "운동",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
            label: "코칭",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: "통계",
          ),
        ],
      ),
    );
  }
}
