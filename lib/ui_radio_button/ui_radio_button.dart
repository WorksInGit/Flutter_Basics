import 'package:flutter/material.dart';

class UiRadioButton extends StatefulWidget {
  const UiRadioButton({super.key});

  @override
  State<UiRadioButton> createState() => _UiRadioButtonState();
}

class _UiRadioButtonState extends State<UiRadioButton> {
  int _selectedValue = 0;
  String mode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Payment',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 130),
            child: Text(
              'Delivety method',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 30),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedValue = 1;
                                mode = 'C O D';
                              });
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 150,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: _selectedValue == 1
                                          ? Colors.blue
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Row(
                                    children: [
                                      Radio<int>(
                                        activeColor: Colors.black,
                                        value: 1,
                                        groupValue: _selectedValue,
                                        onChanged: (int? value) {
                                          setState(() {
                                            _selectedValue = value!;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 60, left: 40),
                                  child: Text(
                                    'Cash On Delivery',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 40, left: 210),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/cod_icon.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 200),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedValue = 2;
                                mode = 'UPI Payment';
                              });
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 150,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: _selectedValue == 2
                                          ? Colors.blue
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Row(
                                    children: [
                                      Radio<int>(
                                        activeColor: Colors.black,
                                        value: 2,
                                        groupValue: _selectedValue,
                                        onChanged: (int? value) {
                                          setState(() {
                                            _selectedValue = value!;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 60, left: 40),
                                  child: Text(
                                    'UPI Payment',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 40, left: 210),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/upi_icon.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 10),
            child: Center(
              child: Text(
                'You Have Selected : $mode',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
