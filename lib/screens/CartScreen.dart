import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {

 /*
 final Order order;
  CartScreen({required this.order});
 */

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          child: const Center(
            child: Text(
              'Cart',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
  }
}