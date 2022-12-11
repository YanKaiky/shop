import 'package:flutter/material.dart';
import 'package:shop/src/screens/details/components/fitting.size.dart';
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
      height: size.height * 0.8,
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: yDefaultPadding * 2,
              ),
              child: Stack(
                children: [
                  SizedBox(
                    child: Image.asset(
                      'assets/images/air-jordan-1-zoom-confort.png',
                    ),
                  ),
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
                ],
              ),
            ),
            TitleAndPrice(
              title: 'Air Jordan 1 Zoom',
              category: 'Confort',
              price: 1429,
            ),
            FittingSize(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: yDefaultPadding),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: Colors.yellow.shade800,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            color: Colors.yellow.shade800,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            color: Colors.yellow.shade800,
                          ),
                          Icon(
                            Icons.star_border_purple500_rounded,
                            color: Colors.yellow.shade800,
                          ),
                          Icon(
                            Icons.star_border_purple500_rounded,
                            color: Colors.yellow.shade800,
                          ),
                        ],
                      ),
                      Text('3/5'),
                    ],
                  ),
                  SizedBox(width: 50),
                  Text('5.5k Sold'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
