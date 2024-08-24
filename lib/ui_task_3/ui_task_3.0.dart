import 'package:flutter/material.dart';
import 'package:flutter_widgets/ui_task_3/bottom_nav.dart';

class UiTaskThree extends StatefulWidget {
  const UiTaskThree({super.key});

  @override
  State<UiTaskThree> createState() => _UiTask3State();
}

class _UiTask3State extends State<UiTaskThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 280, top: 40),
            child: Stack(children: [
              Container(
                height: 110,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/black_berry_pic.png'),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Icon(Icons.currency_rupee_sharp),
                          Text('120')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 4),
                child: Text(
                  'Total Price',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              )
            ]),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 15),
                    child: Text(
                      'Tonight',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Monday,November 25',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white)),
                      child: Center(
                        child: Text(
                          'Promotion',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: Text(
                      'Free Drink',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: Text(
                      'Happy Hour',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220, left: 20),
            child: Container(
              height: 470,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://bakesbybrownsugar.com/wp-content/uploads/2023/09/Blackberry-Simple-Syrup-22C.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 40),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '30%',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Discount',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 580, left: 30),
            child: Text(
              'Blackberry',
              style: TextStyle(
                  color: const Color.fromARGB(255, 110, 28, 124),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 30),
            child: Text(
              'Fresh Drink',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
