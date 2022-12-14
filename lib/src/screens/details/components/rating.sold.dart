import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class RatingAndSold extends StatelessWidget {
  const RatingAndSold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: yDefaultPadding),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow.shade800,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow.shade800,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow.shade800,
                  ),
                  Icon(
                    Icons.star_border_purple500_rounded,
                    color: Colors.yellow.shade800,
                  ),
                  Icon(
                    Icons.star_border_purple500_rounded,
                    color: Colors.yellow.shade800,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('3/5'),
              ),
            ],
          ),
          SizedBox(width: 50),
          Text('5.5k Sold'),
        ],
      ),
    );
  }
}
