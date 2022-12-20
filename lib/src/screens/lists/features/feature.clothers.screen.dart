import 'package:flutter/material.dart';
import 'package:shop/components/app.menu.drawer.dart';
import 'package:shop/src/screens/lists/features/components/body.dart';
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
            icon: Icon(Icons.search),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PurchaseScreen(),
              ),
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
