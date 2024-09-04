import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_project_1/mechanic.dart';
import 'package:flutter_basics/ui_project_1/user.dart';

class MyListView2 extends StatefulWidget {
  const MyListView2({super.key});

  @override
  State<MyListView2> createState() => _ListViewState();
}

class _ListViewState extends State<MyListView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(207, 226, 255, 1),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 100,
              width: 250,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return UserMechanic();
                  },));
                },
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/ui_project_1/rectangle.png'))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Name',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            
                            Row(
                              children: [Text('Mobile Number')],
                            ),
                            Row(
                              children: [Text('Service')],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
