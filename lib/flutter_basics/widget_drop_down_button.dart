import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  @override
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String _selectedItem = 'RED';

  final List<String> _options = [
    'RED',
    'GREEN',
    'BLUE',
    'YELLOW',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('DropdownButton Example',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.only(left: 35),
                child: DropdownButton<String>(
                  underline: SizedBox.shrink(),
                  iconEnabledColor: Colors.white,
                  dropdownColor: _selectedItem == 'RED'
                      ? Colors.red
                      : _selectedItem == 'GREEN'
                          ? Colors.green
                          : _selectedItem == 'BLUE'
                              ? Colors.blue
                              : Colors.yellow,
                  value: _selectedItem,style: TextStyle(color: Colors.white),
                  items: _options.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedItem = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Selected: $_selectedItem',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                color: _selectedItem == 'RED'
                    ? Colors.red
                    : _selectedItem == 'GREEN'
                        ? Colors.green
                        : _selectedItem == 'BLUE'
                            ? Colors.blue
                            : Colors.yellow,
                            borderRadius: BorderRadius.circular(30)
                ),
                            )
          ],
        ),
      ),
    );
  }
}
