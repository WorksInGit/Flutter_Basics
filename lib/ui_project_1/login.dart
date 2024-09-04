import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_project_1/home.dart';
import 'package:flutter_basics/ui_project_1/nav_bar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(207, 226, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 130),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(207, 226, 255, 1),
                        image: DecorationImage(
                            image: AssetImage('assets/ui_project_1/tow.png'))),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 170),
              child: Row(
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
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
                          'Enter Username',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
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
                          'Enter Password',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          label: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text('Enter Password'),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80,left: 100),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return NavBar();
                      },));
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(35, 87, 217, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
