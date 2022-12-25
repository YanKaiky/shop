import 'package:flutter/material.dart';
import 'package:shop/repositories/recommends.repository.dart';
import 'package:shop/src/screens/home/components/recomends/recomend.clothes.card.dart';

class RecomendsClothes extends StatelessWidget {
  const RecomendsClothes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final recommends = RecommendsRepository.recommends;

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
