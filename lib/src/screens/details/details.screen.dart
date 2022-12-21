import 'package:flutter/material.dart';
import 'package:shop/models/products.model.dart';
import 'package:shop/src/screens/details/components/body.dart';
import 'package:shop/src/screens/purchase/purchase.screen.dart';
import 'package:shop/src/utils/constants.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.symmetric(
          horizontal: yDefaultPadding,
        ),
        icon: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
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
    );
  }
}
