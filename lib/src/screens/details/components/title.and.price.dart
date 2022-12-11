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
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: yDefaultPadding * 2,
            child: Text(
              "$title\n",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: yTextColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Row(
            children: [
              Text(
                '\$$price',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.green,
                      fontSize: 30,
                    ),
              ),
              Spacer(),
              Icon(Icons.circle_sharp, color: yTextColor, size: 10),
              Spacer(),
              Text(
                category,
                style: TextStyle(
                  fontSize: 20,
                  color: yPrimaryColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Spacer(),
              Icon(Icons.circle_sharp, color: yTextColor, size: 10),
              Spacer(),
              Container(
                decoration: ShapeDecoration(
                  color: Colors.lightBlue,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(Icons.add_shopping_cart_rounded,
                      color: Colors.white),
                  onPressed: () => print('My Purchase'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
