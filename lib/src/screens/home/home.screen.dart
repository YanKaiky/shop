import 'package:flutter/material.dart';
import 'package:shop/components/app.bottom.navigation.bar.dart';
import 'package:shop/src/screens/home/components/body.dart';
import 'package:shop/components/app.menu.drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.local_grocery_store_outlined),
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed('/purschase'),
          ),
        ],
      ),
      drawer: AppMenuDrawer(),
      body: Body(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
