import 'package:flutter/material.dart';
import 'package:shop/models/products.model.dart';
import 'package:shop/src/utils/constants.dart';

class ItemCard extends StatelessWidget {
  final ProductModel product;
  final VoidCallback press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(yDefaultPadding),
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(product.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: yDefaultPadding / 4),
          child: Text(
            product.title,
            style: TextStyle(color: yTextLightColor),
          ),
        ),
        Text(
          '\$${product.price}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
