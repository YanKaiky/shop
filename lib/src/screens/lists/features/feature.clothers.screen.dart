import 'package:flutter/material.dart';
import 'package:shop/components/app.menu.drawer.dart';
import 'package:shop/src/screens/purchase/purchase.screen.dart';

class FeatureClothers extends StatelessWidget {
  const FeatureClothers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppMenuDrawer(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.local_grocery_store_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PurchaseScreen(),
              ),
            ),
          ),
        ],
      ),
      body: Center(child: Text('Yan')),
    );
  }
}
