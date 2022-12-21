import 'package:flutter/material.dart';
import 'package:shop/models/products.model.dart';
import 'package:shop/src/utils/constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: yDefaultPadding,
      ),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
