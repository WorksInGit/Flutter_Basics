import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_basics/widget_toggle_button.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Expanded(child: ListView.builder(
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
                                Text('Name'),
                                SizedBox(
                                  width: 200,
                                ),
                                Text('10/11/2023')
                              ],
                            ),
                            Row(
                              children: [
                                Text('₹ 5455')
                              ],
                            ),
                            Row(
                              children: [Text('Service')],
                            ),
                            Row(
                              children: [Text('Mechanic Name')],
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
