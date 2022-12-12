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
            child: Stack(
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/images/nike-phantom-ultra-venom.png',
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          padding: EdgeInsets.symmetric(
                            horizontal: yDefaultPadding,
                          ),
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: yPrimaryColor,
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushReplacementNamed('/'),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(
                            Icons.favorite_outline_rounded,
                            size: 30,
                          ),
                          onPressed: () => print('Add Favorite'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: yDefaultPadding),
                      child: Divider(),
                    ),
                  ],
                ),
              ],
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
