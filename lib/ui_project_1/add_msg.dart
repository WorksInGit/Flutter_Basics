import 'package:flutter/material.dart';
import 'package:flutter_widgets/ui_project_1/nav_bar.dart';
import 'package:flutter_widgets/ui_project_1/notification.dart';

class AddMsg extends StatefulWidget {
  const AddMsg({super.key});

  @override
  State<AddMsg> createState() => _AddMsgState();
}

class _AddMsgState extends State<AddMsg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(207, 226, 255, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return NavBar();
                        },
                      ));
                    },
                    child: Icon(Icons.arrow_back_ios_new))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Enter Matter',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              decoration: InputDecoration(
                  label: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text('Matter'),
                  ),
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Text(
                  'Enter Content',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              )
            ],
          ),
          Container(
            height: 400,
            width: 350,
            decoration: BoxDecoration(color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            width: 180,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              'Submit',
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.w600
              ),
            )),
          )
        ],
      ),
    );
  }
}
