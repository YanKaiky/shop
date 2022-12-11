import 'package:flutter/material.dart';
import 'package:shop/src/screens/home/components/fashion/fashion.clothers.card.dart';

class FashionClothes extends StatelessWidget {
  const FashionClothes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FashionClothesCard(
            image: 'assets/images/nike-black.png',
            title: 'Nike Black',
            category: 'Confort',
            price: 309,
            press: () => Navigator.of(context).pushReplacementNamed('/details'),
          ),
          FashionClothesCard(
            image: 'assets/images/nike-set.png',
            title: 'Nike Set',
            category: 'Set',
            price: 810,
            press: () => Navigator.of(context).pushReplacementNamed('/details'),
          ),
          FashionClothesCard(
            image: 'assets/images/nike-red.png',
            title: 'Nike Red',
            category: 'Confort',
            price: 309,
            press: () => Navigator.of(context).pushReplacementNamed('/details'),
          ),
          FashionClothesCard(
            image: 'assets/images/nike-black-2.png',
            title: 'Nike Black 2',
            category: 'Confort',
            price: 499,
            press: () => Navigator.of(context).pushReplacementNamed('/details'),
          ),
          FashionClothesCard(
            image: 'assets/images/nike-black-3.png',
            title: 'Nike Black 3',
            category: 'Confort',
            price: 1999,
            press: () => Navigator.of(context).pushReplacementNamed('/details'),
          ),
          FashionClothesCard(
            image: 'assets/images/nike-yellow.png',
            title: 'Nike Yellow',
            category: 'Confort',
            price: 300,
            press: () => Navigator.of(context).pushReplacementNamed('/details'),
          ),
        ],
      ),
    );
  }
}
