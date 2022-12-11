import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context)?.settings.name;

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
              route == '/'
                  ? Icons.shopping_bag_rounded
                  : Icons.shopping_bag_outlined,
              // Icons.shopping_bag_outlined,
              color: yPrimaryColor,
            ),
            onPressed: () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          IconButton(
            icon: Icon(
              route == '/notifications'
                  ? Icons.notifications_rounded
                  : Icons.notifications_outlined,
              color: yPrimaryColor,
            ),
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed('/notifications'),
          ),
          IconButton(
            icon: Icon(
              route == '/favorites'
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_outlined,
              color: yPrimaryColor,
            ),
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed('/favorites'),
          ),
        ],
      ),
    );
  }
}
