import 'package:flutter/material.dart';
import 'package:shop/src/screens/details/components/icon.card.dart';
import 'package:shop/src/utils/constants.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: yDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: yDefaultPadding * 3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: yDefaultPadding),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: yPrimaryColor,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Spacer(),
                    IconCard(icon: Icons.wb_sunny_outlined),
                    IconCard(icon: Icons.snowshoeing_sharp),
                    IconCard(icon: Icons.add_shopping_cart_rounded),
                    IconCard(icon: Icons.favorite_outline_rounded),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: yPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image:
                      AssetImage('assets/images/air-jordan-1-zoom-confort.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
