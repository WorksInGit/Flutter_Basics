import 'package:flutter/material.dart';

class WidgetStack extends StatefulWidget {
  const WidgetStack({super.key});

  @override
  State<WidgetStack> createState() => _WidgetStackState();
}

class _WidgetStackState extends State<WidgetStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/mount_kenya.jpg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Center(
                child: Text(
                  'Mount Kenya',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 460),
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                    30,),topRight: Radius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450, left: 170),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/zannan_pic.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
