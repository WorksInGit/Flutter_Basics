import 'package:flutter/material.dart';

class UiRadioButton2 extends StatefulWidget {
  const UiRadioButton2({super.key});

  @override
  State<UiRadioButton2> createState() => _UiRadioButton2State();
}

class _UiRadioButton2State extends State<UiRadioButton2> {
  int _selectedValue = 0;
  String mode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amount Payment'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Delivery method',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedValue = 1;
                                  mode = 'Standard';
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: _selectedValue == 1
                                        ? Border.all(
                                            color: Colors.blue, width: 5)
                                        : Border.all(color: Colors.black)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Text('Standard',
                                  style: _selectedValue == 1
                                      ? TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blue)
                                      : TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35, left: 10),
                              child: Text('4 - 10 Buisness days',
                                  style: _selectedValue == 1
                                      ? TextStyle(color: Colors.blue)
                                      : TextStyle(color: Colors.black)),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 10),
                                child: _selectedValue == 1
                                    ? Icon(
                                        Icons.currency_rupee_sharp,
                                        color: Colors.blue,
                                        size: 20,
                                      )
                                    : Icon(
                                        Icons.currency_rupee_sharp,
                                        color: Colors.black,
                                        size: 20,
                                      )),
                            Padding(
                              padding: const EdgeInsets.only(top: 60, left: 28),
                              child: Text(
                                '100',
                                style: _selectedValue == 1
                                    ? TextStyle(color: Colors.blue)
                                    : TextStyle(color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Radio<int>(
                                value: 1,
                                activeColor: Colors.blue,
                                groupValue: _selectedValue,
                                onChanged: (int? value) {
                                  _selectedValue = value!;
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedValue = 2;
                                  mode = 'Express';
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: _selectedValue == 2
                                        ? Border.all(
                                            color: Colors.blue, width: 5)
                                        : Border.all(color: Colors.black)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Text('Express',
                                  style: _selectedValue == 2
                                      ? TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blue)
                                      : TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35, left: 10),
                              child: Text('2  - 5 Buisness days',
                                  style: _selectedValue == 2
                                      ? TextStyle(color: Colors.blue)
                                      : TextStyle(color: Colors.black)),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 10),
                                child: _selectedValue == 2
                                    ? Icon(
                                        Icons.currency_rupee_sharp,
                                        color: Colors.blue,
                                        size: 20,
                                      )
                                    : Icon(
                                        Icons.currency_rupee_sharp,
                                        color: Colors.black,
                                        size: 20,
                                      )),
                            Padding(
                              padding: const EdgeInsets.only(top: 60, left: 28),
                              child: Text(
                                '200',
                                style: _selectedValue == 2
                                    ? TextStyle(color: Colors.blue)
                                    : TextStyle(color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Radio<int>(
                                value: 2,
                                activeColor: Colors.blue,
                                groupValue: _selectedValue,
                                onChanged: (int? value) {
                                  _selectedValue = value!;
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedValue = 3;
                                  mode = 'Super Fast';
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: _selectedValue == 3
                                        ? Border.all(
                                            color: Colors.blue, width: 5)
                                        : Border.all(color: Colors.black)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Text('Super Fast',
                                  style: _selectedValue == 3
                                      ? TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blue)
                                      : TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35, left: 10),
                              child: Text('1 Buisness days',
                                  style: _selectedValue == 3
                                      ? TextStyle(color: Colors.blue)
                                      : TextStyle(color: Colors.black)),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 10),
                                child: _selectedValue == 3
                                    ? Icon(
                                        Icons.currency_rupee_sharp,
                                        color: Colors.blue,
                                        size: 20,
                                      )
                                    : Icon(
                                        Icons.currency_rupee_sharp,
                                        color: Colors.black,
                                        size: 20,
                                      )),
                            Padding(
                              padding: const EdgeInsets.only(top: 60, left: 28),
                              child: Text(
                                '300',
                                style: _selectedValue == 3
                                    ? TextStyle(color: Colors.blue)
                                    : TextStyle(color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Radio<int>(
                                value: 3,
                                activeColor: Colors.blue,
                                groupValue: _selectedValue,
                                onChanged: (int? value) {
                                  _selectedValue = value!;
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Delivery method',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedValue = 1;
                                  mode = 'Standard';
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: _selectedValue == 1
                                        ? Border.all(
                                            color: Colors.blue, width: 5)
                                        : Border.all(color: Colors.black)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Text('Standard',
                                  style: _selectedValue == 1
                                      ? TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blue)
                                      : TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35, left: 10),
                              child: Text('4 - 10 Buisness days',
                                  style: _selectedValue == 1
                                      ? TextStyle(color: Colors.blue)
                                      : TextStyle(color: Colors.black)),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 10),
                                child: _selectedValue == 1
                                    ? Icon(
                                        Icons.currency_rupee_sharp,
                                        color: Colors.blue,
                                        size: 20,
                                      )
                                    : Icon(
                                        Icons.currency_rupee_sharp,
                                        color: Colors.black,
                                        size: 20,
                                      )),
                            Padding(
                              padding: const EdgeInsets.only(top: 60, left: 28),
                              child: Text(
                                '100',
                                style: _selectedValue == 1
                                    ? TextStyle(color: Colors.blue)
                                    : TextStyle(color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Radio<int>(
                                value: 1,
                                activeColor: Colors.blue,
                                groupValue: _selectedValue,
                                onChanged: (int? value) {
                                  _selectedValue = value!;
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedValue = 5;
                                  mode = 'Express';
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: _selectedValue == 5
                                        ? Border.all(
                                            color: Colors.blue, width: 5)
                                        : Border.all(color: Colors.black)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Text('Express',
                                  style: _selectedValue == 5
                                      ? TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blue)
                                      : TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35, left: 10),
                              child: Text('2  - 5 Buisness days',
                                  style: _selectedValue == 5
                                      ? TextStyle(color: Colors.blue)
                                      : TextStyle(color: Colors.black)),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 10),
                                child: _selectedValue == 5
                                    ? Icon(
                                        Icons.currency_rupee_sharp,
                                        color: Colors.blue,
                                        size: 20,
                                      )
                                    : Icon(
                                        Icons.currency_rupee_sharp,
                                        color: Colors.black,
                                        size: 20,
                                      )),
                            Padding(
                              padding: const EdgeInsets.only(top: 60, left: 28),
                              child: Text(
                                '200',
                                style: _selectedValue == 5
                                    ? TextStyle(color: Colors.blue)
                                    : TextStyle(color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 250),
                              child: Radio<int>(
                                value: 5,
                                activeColor: Colors.blue,
                                groupValue: _selectedValue,
                                onChanged: (int? value) {
                                  _selectedValue = value!;
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 210, left: 20),
            child: Row(
              children: [
                Text(
                  'Payment method',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 90,
                ),
                Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                Text(
                  'Add new card',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
