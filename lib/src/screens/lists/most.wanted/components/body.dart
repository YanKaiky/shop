import 'package:flutter/material.dart';
import 'package:shop/repositories/most.wanted.repository.dart';
import 'package:shop/src/screens/lists/most.wanted/components/categories.dart';
import 'package:shop/src/screens/lists/most.wanted/components/item.card.dart';
import 'package:shop/src/utils/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final mostWanteds = MostWantedRepository.mostWanteds;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: yDefaultPadding),
          child: Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_rounded),
              ),
              SizedBox(width: 15),
              Text(
                'Most wanted',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        Categrories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: yDefaultPadding),
            child: GridView.builder(
              itemCount: mostWanteds.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: yDefaultPadding,
                crossAxisSpacing: yDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, i) => ItemCard(
                mostWanted: mostWanteds[i],
                press: () {},
              ),
            ),
          ),
        )
      ],
    );
  }
}
