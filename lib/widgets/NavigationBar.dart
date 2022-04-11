import 'package:flutter/material.dart';


class BNavigationBar extends StatefulWidget {

  final Function currentIndex;
  const BNavigationBar ({Key? key, required this.currentIndex}) : super(key: key);

  @override
   _BNavigationBarState createState() => _BNavigationBarState();
}

class _BNavigationBarState extends State<BNavigationBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {

      return BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
            widget.currentIndex(i);
          });
        },
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[100],
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[100],
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[100],
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[100],
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
          selectedItemColor: Colors.black,
        );
  }
}

