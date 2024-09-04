import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basics/ui_car_rent/bottom_nav.dart';
import 'package:flutter_basics/ui_car_rent/inbox.dart';
import 'package:flutter_basics/ui_car_rent/profile.dart';
import 'package:flutter_basics/ui_car_rent/wishlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _UiCarRentState();
}

class _UiCarRentState extends State<HomePage> {
  final List<Widget> _pages = [HomePage(), Wishlist(), Inbox(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 217, 217),
      body: SingleChildScrollView(
        child: Stack(
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
                          'Hi Zannan 👋',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Let's find your favourite car here",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.black, width: 0.3)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      label: Text('Search'),
                                      suffixIcon: Icon(Icons.mic_none_rounded),
                                      prefixIcon: Icon(Icons.search)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.tune,
                                color: Color.fromARGB(255, 233, 223, 223),
                                size: 33,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Stack(
                      children: [
                        Container(
                          height: 130,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 10),
                          child: Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://www.shutterstock.com/image-illustration/almaty-kazakhstan-juli-16-2019-260nw-1456621994.jpg'),
                                    fit: BoxFit.cover,filterQuality: FilterQuality.low)),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    '20%',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    'Week Deals',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    'Get a new car discount',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    'only valid this week',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        Text(
                          'Brands',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 220,
                        ),
                        Text('See All'),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 110,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://qph.cf2.quoracdn.net/main-qimg-6c409b56dda0d1b9bd4b1c1dccb89814'),filterQuality: FilterQuality.low)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Mercedes',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 110,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://listcarbrands.com/wp-content/uploads/2015/10/BMW-Logo-1963.png'),
                                          fit: BoxFit.cover,
                                          filterQuality: FilterQuality.low
                                          )),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 29, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'BMW',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 110,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://assets.designhill.com/design-blog/wp-content/uploads/2024/01/7.jpg'),
                                          fit: BoxFit.cover,
                                          filterQuality: FilterQuality.low
                                          )),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Porsche',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 110,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://www.carlogos.org/logo/Renault-logo-2015-2048x2048.png'),
                                              filterQuality: FilterQuality.low
                                              )),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Renault',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Popular Cars',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://imgd.aeplcdn.com/664x374/n/u3n5d3a_1570307.jpg?q=80'),
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.low
                                  )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                'Mercedes S-class',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text('4.8')
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 10,
                          indent: 20,
                          endIndent: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 20),
                          child: Row(
                            children: [
                              Text('Automation'),
                              SizedBox(
                                height: 20,
                                child: VerticalDivider(
                                  color: Colors.black,
                                  width: 30,
                                  thickness: 1,
                                ),
                              ),
                              Text('5 Speed'),
                              SizedBox(
                                height: 20,
                                child: VerticalDivider(
                                  color: Colors.black,
                                  thickness: 1,
                                  width: 30,
                                ),
                              ),
                              Text('Diesel'),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(
                                Icons.currency_rupee_sharp,
                                color: Colors.black,
                              ),
                              Text(
                                '60,000',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn.dicklovett.co.uk/uploads/new_vehicle/4_199_f.jpg?v=1710337910'),
                                      filterQuality: FilterQuality.low
                                      )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                'BMW 7-Series',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text('5.0')
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 10,
                          indent: 20,
                          endIndent: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 20),
                          child: Row(
                            children: [
                              Text('Automation'),
                              SizedBox(
                                height: 20,
                                child: VerticalDivider(
                                  color: Colors.black,
                                  width: 30,
                                  thickness: 1,
                                ),
                              ),
                              Text('5 Speed'),
                              SizedBox(
                                height: 20,
                                child: VerticalDivider(
                                  color: Colors.black,
                                  thickness: 1,
                                  width: 30,
                                ),
                              ),
                              Text('Diesel'),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(
                                Icons.currency_rupee_sharp,
                                color: Colors.black,
                              ),
                              Text(
                                '75,000',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 290, top: 35),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://static.vecteezy.com/system/resources/previews/015/934/666/original/bell-icon-simple-element-symbol-for-template-design-can-be-used-for-website-and-mobile-application-vector.jpg'),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.low
                            )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage('assets/car_ui_profile_icon.jpg'),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.low
                            )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
