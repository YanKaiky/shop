import 'package:flutter/material.dart';
import 'package:shop/src/screens/details/components/fittings/fitting.size.dart';
import 'package:shop/src/screens/details/components/rating.sold.dart';
import 'package:shop/src/screens/details/components/title.and.price.dart';
import 'package:shop/src/utils/constants.dart';

class StackImage extends StatelessWidget {
  const StackImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: yDefaultPadding * 2,
            ),
            child: Image.asset(
              'assets/images/nike-phantom-ultra-venom.png',
            ),
          ),
          TitleAndPrice(
            title: 'Ultra Venom',
            category: 'Field',
            price: 1999,
          ),
          FittingSize(),
          RatingAndSold(),
        ],
      ),
    );
  }
}
