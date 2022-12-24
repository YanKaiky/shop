import 'package:flutter/material.dart';
import 'package:shop/repositories/recommends.repository.dart';
import 'package:shop/src/screens/home/components/recomends/recomend.clothes.card.dart';

class RecomendsClothes extends StatelessWidget {
  const RecomendsClothes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recommends = RecommendsRepository.recommends;

    return Row(
      children: [
        SizedBox(
          width: double.infinity,
          height: 100.0,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recommends.length,
            itemBuilder: (context, i) {
              return RecomendClothesCard(
                recommend: recommends[i],
                press: () {},
              );
            },
          ),
        ),
      ],
    );
  }
}
