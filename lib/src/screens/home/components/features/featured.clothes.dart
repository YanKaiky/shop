import 'package:flutter/material.dart';
import 'package:shop/src/screens/home/components/features/feature.clothes.card.dart';

class FeaturedClothes extends StatelessWidget {
  const FeaturedClothes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeatureClothesCard(
            image: 'assets/images/jordan-1-mid.png',
            press: (() {}),
          ),
          FeatureClothesCard(
            image: 'assets/images/air-jordan-1-acclimate.png',
            press: (() {}),
          ),
          FeatureClothesCard(
            image: 'assets/images/air-jordan-1-zoom-confort.png',
            press: (() {}),
          ),
          FeatureClothesCard(
            image: 'assets/images/air-jordan-1-mid.png',
            press: (() {}),
          ),
          FeatureClothesCard(
            image: 'assets/images/air-jordan-1-mid-se.png',
            press: (() {}),
          ),
          FeatureClothesCard(
            image: 'assets/images/air-jordan-1-retro-high-og.png',
            press: (() {}),
          ),
          FeatureClothesCard(
            image: 'assets/images/air-jordan-1-mid-se-red.png',
            press: (() {}),
          ),
        ],
      ),
    );
  }
}
