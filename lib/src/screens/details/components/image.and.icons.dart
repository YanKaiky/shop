import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
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
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: yDefaultPadding * 2,
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
                          onPressed: () => Navigator.pop(context),
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
            ),
          ],
        ),
      ),
      // Expanded(
      //   child: Padding(
      //     padding: EdgeInsets.symmetric(vertical: yDefaultPadding * 3),
      //     child: Column(
      //       children: <Widget>[
      //         Align(
      //           alignment: Alignment.topLeft,
      //           child: IconButton(
      //             padding:
      //                 EdgeInsets.symmetric(horizontal: yDefaultPadding),
      //             icon: Icon(
      //               Icons.arrow_back_rounded,
      //               color: yPrimaryColor,
      //             ),
      //             onPressed: () => Navigator.pop(context),
      //           ),
      //         ),
      //         Spacer(),
      //         IconCard(icon: Icons.wb_sunny_outlined),
      //         IconCard(icon: Icons.snowshoeing_sharp),
      //         IconCard(icon: Icons.add_shopping_cart_rounded),
      //         IconCard(icon: Icons.favorite_outline_rounded),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
