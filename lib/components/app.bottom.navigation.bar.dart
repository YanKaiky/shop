import 'package:flutter/material.dart';
import 'package:shop/src/screens/favorites/favorites.screen.dart';
import 'package:shop/src/screens/home/home.screen.dart';
import 'package:shop/src/screens/notifications/notifications.screen.dart';
import 'package:shop/src/utils/constants.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: yDefaultPadding * 2,
        right: yDefaultPadding * 2,
        bottom: yDefaultPadding,
      ),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: yPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_bag_rounded,
              // Icons.shopping_bag_outlined,
              color: yPrimaryColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: yPrimaryColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationsScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: yPrimaryColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritesScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
