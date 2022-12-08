import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class RecomendClothesCard extends StatelessWidget {
  const RecomendClothesCard({
    Key? key,
    required this.image,
    required this.title,
    required this.category,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, category;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: yDefaultPadding,
        top: yDefaultPadding / 2,
        bottom: yDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(yDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: yPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: category.toUpperCase(),
                          style: TextStyle(
                            color: yPrimaryColor.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: yPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
