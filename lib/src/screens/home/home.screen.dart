// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shop/src/screens/favorites/favorites.screen.dart';
import 'package:shop/src/screens/home/components/body.dart';
import 'package:shop/components/app.menu.drawer.dart';
import 'package:shop/src/screens/notifications/notifications.screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Body(),
    NotificationsScreen(),
    FavoritesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0
          ? AppBar(
              elevation: 0,
              actions: [
                IconButton(
                  icon: Icon(Icons.local_grocery_store_outlined),
                  onPressed: () =>
                      Navigator.of(context).pushReplacementNamed('/purschase'),
                ),
              ],
            )
          : null,
      drawer: AppMenuDrawer(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: _AppBottomNavigationBar(),
    );
  }

  BottomNavigationBar _AppBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      onTap: onTabTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(_selectedIndex == 0
              ? Icons.shopping_bag_rounded
              : Icons.shopping_bag_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(_selectedIndex == 1
              ? Icons.notifications_rounded
              : Icons.notifications_outlined),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(_selectedIndex == 2
              ? Icons.favorite_rounded
              : Icons.favorite_border_outlined),
          label: 'Favorites',
        ),
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
