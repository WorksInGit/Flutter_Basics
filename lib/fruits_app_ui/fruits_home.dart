import 'package:flutter/material.dart';

class FruitsHome extends StatefulWidget {
  const FruitsHome({super.key});

  @override
  State<FruitsHome> createState() => _FruitsHomeState();
}

class _FruitsHomeState extends State<FruitsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('Deliver to'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Zannan, Calicut",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                  Icon(
                    Icons.calendar_month,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.map,
                    color: Colors.grey,
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Mino Food',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                          label: Text('Search for your favorite'),
                          suffixIcon: Icon(Icons.tune)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Popular'),
                  Text('Best Sales'),
                  Text('Promo'),
                  Text('Category'),
                ],
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700),
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
