import 'package:flutter/material.dart';
import 'package:shop/models/products.model.dart';
import 'package:shop/src/utils/constants.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        padding: EdgeInsets.symmetric(
          horizontal: yDefaultPadding,
        ),
        icon: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
        onPressed: () => Navigator.of(context).pushReplacementNamed('/browse'),
      )),
      body: Center(child: Text('Empty')),
    );
  }
}
