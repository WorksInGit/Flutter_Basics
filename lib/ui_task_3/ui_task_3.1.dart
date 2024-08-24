import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiTaskThree1 extends StatefulWidget {
  const UiTaskThree1({super.key});

  @override
  State<UiTaskThree1> createState() => _UiTaskThree1State();
}

class _UiTaskThree1State extends State<UiTaskThree1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://paulabrookgreen.wordpress.com/wp-content/uploads/2014/07/dsc06308.jpg?w=604&h=805'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.arrow_back_ios_new),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 74, 67, 67),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(20, 20),
                      topRight: Radius.elliptical(20, 20),
                      bottomLeft: Radius.elliptical(500, 250),
                      bottomRight: Radius.elliptical(20, 20)
                      // topLeft: Radius.circular(20),
                      // topRight: Radius.circular(20),
                      // bottomLeft: Radius.circular(250),
                      // bottomRight: Radius.circular(20)
                      )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300, top: 340),
            child: Stack(
              children: [
                Container(
                  height: 120,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45, left: 20),
                  child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 74, 67, 67),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 20),
                  child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 415, left: 20),
            child: Text(
              'Menta Cocktail',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 440),
            child: Row(
              children: [
                Text(
                  'Fresh Drink',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 470, left: 20),
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 0.5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '15%',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Alcohol',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 0.5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '25%',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Fruit',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 0.5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '60%',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Water',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 530, left: 20),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 10),
                      child: Icon(
                        Icons.currency_rupee_sharp,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 22),
                      child: Text(
                        '140',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16,left: 50),
                      child: Text(
                        'Price x Drink',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
