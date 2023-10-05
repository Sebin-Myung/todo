import 'package:flutter/material.dart';
import 'package:todo/screen/monthly_screen.dart';
import 'package:todo/style/color_styles.dart';
import 'package:todo/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'todo',
        theme:
            ThemeData(primaryColor: createMaterialColor(ColorStyle.veryPeri)),
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              body: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  MonthlyScreen(),
                  Container(
                    child: const Center(child: Text('주간')),
                  ),
                  Container(
                    child: const Center(child: Text('더보기')),
                  ),
                ],
              ),
              bottomNavigationBar: BottomBar(),
            )));
  }
}
