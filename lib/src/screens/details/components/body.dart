import 'package:flutter/material.dart';
import 'package:shop/models/products.model.dart';
import 'package:shop/src/screens/details/components/add.to.cart.dart';
import 'package:shop/src/screens/details/components/color.and.size.dart';
import 'package:shop/src/screens/details/components/counter.with.fav.btn.dart';
import 'package:shop/src/screens/details/components/description.dart';
import 'package:shop/src/screens/details/components/product.title.with.image.dart';
import 'package:shop/src/utils/constants.dart';

class Body extends StatelessWidget {
  final ProductModel product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    right: yDefaultPadding,
                    left: yDefaultPadding,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: yDefaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: yDefaultPadding / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: yDefaultPadding / 2),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
