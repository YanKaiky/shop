import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class FeatureClothesCard extends StatelessWidget {
  const FeatureClothesCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: yDefaultPadding,
          top: yDefaultPadding / 2,
          bottom: yDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
