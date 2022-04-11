import 'package:delivery_app_final/screens/RestaurantScreen.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import '../models/restaurant.dart';
import '../widgets/rating_stars.dart';
import '../widgets/recent_orders.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

      _buildRestaurants() {
        List<Widget> restaurantList = [];
        restaurants.forEach((Restaurant restaurant) {
          restaurantList.add(
              GestureDetector(
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            RestaurantScreen(restaurant: restaurant),
                      ),
                    ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          height: 130.0,
                          width: 130.0,
                          image: AssetImage(restaurant.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              restaurant.name,
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            RatingStars(restaurant.rating),
                            const SizedBox(height: 4.0),
                            Text(restaurant.address,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4.0),
                            const Text(
                              '0.2 miles away',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
          );
        });
        return Column(children: restaurantList);
      }

      Widget build(BuildContext context) {
        return ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(width: 0.8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                          width: 0.8,
                          color: Theme
                              .of(context)
                              .primaryColor),
                    ),
                    hintText: 'Search Food or Restaurants',
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {},
                    )
                ),
              ),
            ),
            RecentOrders(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Nearby Restaurants',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                _buildRestaurants(),
              ],
            ),
          ],
        );
    }
}