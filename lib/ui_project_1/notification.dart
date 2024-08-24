import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_basics/widget_toggle_button.dart';
import 'package:flutter_widgets/ui_project_1/add_msg.dart';
import 'package:flutter_widgets/ui_project_1/user.dart';

class MyNotification extends StatefulWidget {
  const MyNotification({super.key});

  @override
  State<MyNotification> createState() => _PaymentState();
}

class _PaymentState extends State<MyNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
            border: Border.all(color: Colors.blue)),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return AddMsg();
              },
            ));
          },
          shape: CircleBorder(),
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            size: 40,
            color: Colors.blue,
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(207, 226, 255, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/ui_project_1/image.png'),
                  radius: 30,
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 120,
                  width: 100,
                  child: Card(
                      child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Heading',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                    'Laren ipsum is a placeholder text commonly'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                    'used to demonstrate the visual form of a'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                    'document or a typeface without relying .....'),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
