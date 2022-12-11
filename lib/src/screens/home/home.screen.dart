import 'package:flutter/material.dart';
import 'package:shop/components/app.bottom.navigation.bar.dart';
import 'package:shop/src/screens/home/components/body.dart';
import 'package:shop/components/app.menu.drawer.dart';
import 'package:shop/src/screens/purchase/purchase.screen.dart';

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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PurchaseScreen(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: AppMenuDrawer(),
      body: Body(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
