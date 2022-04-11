import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/restaurant.dart';

class RestaurantScreen extends StatefulWidget {

  final Restaurant restaurant;

  RestaurantScreen({required this.restaurant});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  Color _iconColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: 220.0,
                width: MediaQuery.of(context).size.width,
                image: AssetImage(widget.restaurant.imageUrl),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    iconSize: 35.0,
                    onPressed: () => Navigator.pop(context),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_outline),
                    color: Colors.white,
                    iconSize: 35.0,
                    onPressed: () {/*setState (() {_iconColor = Colors.red;*/
                    }
                  ),
                ],
              ),
              ),
            ],
          ),
          Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 35.0),
            child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Text(widget.restaurant.name),
                    Text('0.2 miles away'),
                  ],
                  ),
                ],
            ),
          ),
        ],
      ),
    );
  }
}