import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.category,
    required this.price,
  }) : super(key: key);

  final String title, category;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: yDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: yTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: "$category\n",
                  style: TextStyle(
                    fontSize: 20,
                    color: yPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.green,
                  fontSize: 25,
                ),
          ),
        ],
      ),
    );
  }
}
