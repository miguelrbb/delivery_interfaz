
import 'package:flutter/material.dart';

import '../data/data.dart';
import '../models/order.dart';

class RecentOrders extends StatelessWidget {

  _buildRecentOrder(BuildContext context, Order order) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: 320.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1.0,
          color: Colors.grey.shade200,
        ),
      ),
      child: Row(
        children: <Widget> [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image(
              height: 100.0,
              width: 100.0,
              image: AssetImage(order.food.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  order.food.name,
                  style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600)
              ),
              const SizedBox(height: 4.0),
              Text(order.restaurant.name,
                  style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600)
              ),
              const SizedBox(height: 4.0),
              Text(order.date,
                  style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600)
              ),
              const SizedBox(height: 4.0),
            ]
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
           child: Text(
            'Recent Orders',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
           ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          height: 110.0,
          child: ListView.builder(
            //padding: const EdgeInsets.only(right: 1000),
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders.length,
            itemBuilder: (BuildContext context, int index) {
              Order order = currentUser.orders[index];
              return _buildRecentOrder(context, order);
            },
          ),
          decoration: BoxDecoration (
            boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 0), // changes position of shadow
            ),
           ],
          ),
        ),
      ],
    );
  }
}
