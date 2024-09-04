import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_project_1/home.dart';
import 'package:flutter_basics/ui_project_1/nav_bar.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Row(
              children: [GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NavBar();
                  },));
                },
                child: Icon(Icons.arrow_back_ios_new))],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Color.fromRGBO(207, 226, 255, 1), borderRadius: BorderRadius.circular(50),
                image: DecorationImage(image: AssetImage('assets/ui_project_1/rectangle.png'))
                ),
          ),
          Text(
            'Name',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            'Location',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Username',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(207, 226, 255, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text('Username'),
                        ),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(207, 226, 255, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text('0000000000'),
                        ),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Email Address',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(207, 226, 255, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text('Example@gmail.com'),
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150,left: 70),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  child: Center(child: Text('Accept',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),)),
                ),
                SizedBox(
                  width: 20,
                ),
                 Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),
                  child: Center(child: Text('Reject',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
