import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: BottomAppBar(
        height: 60,
        color: Colors.grey,
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      Text('Home',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  ),
            ),
                SizedBox(
                  width: 100,
                ),
                IconButton(onPressed: (){},icon: Icon(Icons.file_copy,color: Colors.black,)),
                SizedBox(
                  width: 60,
                ),
                IconButton(onPressed: (){},icon: Icon(Icons.search,color: Colors.black,)),
          ],
        ),
      ),
    );
  }
}
