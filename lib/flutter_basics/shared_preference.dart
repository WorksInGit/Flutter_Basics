import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends StatefulWidget {
  const SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  var _name = TextEditingController();
  var _domain = TextEditingController();

  Future<void> AddData() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    data.setString('Name', _name.text);
    data.setString('Domain', _domain.text);
    print('Added Successfully');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _name,
                  decoration: InputDecoration(
                      label: Text('Name'),
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(color: Colors.blue)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _domain,
                  decoration: InputDecoration(
                      label: Text('Domain'),
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter your domain',
                      hintStyle: TextStyle(color: Colors.blue)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  AddData();
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ObtainedData(),
                      ));
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Go',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ObtainedData extends StatefulWidget {
  const ObtainedData({super.key});

  @override
  State<ObtainedData> createState() => _ObtainedDataState();
}

class _ObtainedDataState extends State<ObtainedData> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetData();

  }

  var name;
  var domain;
  Future<void> GetData() async {
    SharedPreferences getData = await SharedPreferences.getInstance();
    setState(() {
      name = getData.getString('Name');
      domain = getData.getString('Domain');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 300, right: 180),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your name : $name',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Your domain: $domain',
                  style: TextStyle(color: Colors.white, fontSize: 30))
            ],
          ),
        ),
      ),
    );
  }
}
