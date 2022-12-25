import 'package:flutter/material.dart';
import 'package:shop/repositories/most.wanted.repository.dart';
import 'package:shop/src/screens/home/components/most.wanted/most.wanted.card.dart';

class MostWanted extends StatelessWidget {
  const MostWanted({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final mostWnateds = MostWantedRepository.mostWanteds;

    return SizedBox(
      height: size.height * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mostWnateds.length,
        itemBuilder: (context, i) {
          return MostWantedCard(
            image: mostWnateds[i].image,
            press: (() {}),
          );
        },
      ),
    );
  }
}
