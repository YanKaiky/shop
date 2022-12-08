import 'package:flutter/material.dart';
import 'package:shop/src/screens/home/recomend.clothes.card.dart';

class RecomendsClothes extends StatelessWidget {
  const RecomendsClothes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendClothesCard(
            image: 'assets/images/nike-beco-2-black.png',
            title: 'Nike Beco 2',
            category: 'Society',
            price: 309,
            press: () {},
          ),
          RecomendClothesCard(
            image: 'assets/images/nike-beco-2.png',
            title: 'Nike Beco 2',
            category: 'Society',
            price: 309,
            press: () {},
          ),
          RecomendClothesCard(
            image: 'assets/images/nike-phantom-gt2-academy.png',
            title: 'Phantom GT2',
            category: 'Society',
            price: 499,
            press: () {},
          ),
          RecomendClothesCard(
            image: 'assets/images/nike-phantom-ultra-venom.png',
            title: 'Ultra Venom',
            category: 'Campo',
            price: 1999,
            press: () {},
          ),
        ],
      ),
    );
  }
}
