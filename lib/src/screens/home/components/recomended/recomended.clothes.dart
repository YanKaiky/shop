import 'package:flutter/material.dart';
import 'package:shop/repositories/recommended.repository.dart';
import 'package:shop/src/screens/home/components/recomended/recomend.clothes.card.dart';

class RecomendedClothes extends StatelessWidget {
  const RecomendedClothes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final recommends = RecommendedRepository.recommends;

    return SizedBox(
      height: size.height * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommends.length,
        itemBuilder: (context, i) {
          return RecomendClothesCard(
            recommend: recommends[i],
            press: () {},
          );
        },
      ),
    );
  }
}
