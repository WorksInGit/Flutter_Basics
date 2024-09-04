import 'package:flutter/material.dart';

class BioHome extends StatefulWidget {
  const BioHome({super.key});

  @override
  State<BioHome> createState() => _BioHomeState();
}

class _BioHomeState extends State<BioHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text('First name')
            ],
          )
        ],
      ),
    );
  }
}