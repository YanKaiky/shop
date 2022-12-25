import 'package:flutter/material.dart';
import 'package:shop/models/most.wanted.model.dart';
import 'package:shop/src/utils/constants.dart';

class ItemCard extends StatelessWidget {
  final MostWantedModel mostWanted;
  final VoidCallback press;

  const ItemCard({
    Key? key,
    required this.mostWanted,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: Container(
              width: size.width / 2,
              padding: EdgeInsets.all(yDefaultPadding),
              decoration: BoxDecoration(
                color: mostWanted.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: mostWanted.guid,
                child: Image.asset(mostWanted.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: yDefaultPadding / 4),
            child: Text(
              mostWanted.title,
              style: TextStyle(color: yTextLightColor),
            ),
          ),
          Text(
            '\$${mostWanted.price}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
