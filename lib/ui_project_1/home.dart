import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_project_1/list_view.dart';
import 'package:flutter_basics/ui_project_1/list_view_2.dart';
import 'package:flutter_basics/ui_project_1/nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(207, 226, 255, 1),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/ui_project_1/image.png'),
                    radius: 30,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Stack(
                children: [
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: TabBar(
                    tabs: [
                      Tab(text: 'User'),
                      Tab(
                        text: 'Mechanic',
                      )
                    ],
                    labelStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    labelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                ],
              ),
            ),
            Expanded(child: TabBarView(children: [
              MyListView(),
              MyListView2(),
            ]))
          ],
        ),
      ),
    );
  }
}
