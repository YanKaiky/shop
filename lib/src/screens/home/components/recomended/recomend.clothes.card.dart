import 'package:flutter/material.dart';
import 'package:shop/models/recommended.model.dart';
import 'package:shop/src/utils/constants.dart';

class RecomendClothesCard extends StatelessWidget {
  const RecomendClothesCard({
    Key? key,
    required this.press,
    required this.recommend,
  }) : super(key: key);

  final VoidCallback press;
  final RecommendedModel recommend;

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
          Image.asset(recommend.image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(yDefaultPadding / 3),
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
                          text: recommend.title.length >= 17
                              ? '${recommend.title.substring(0, 17).toUpperCase()}...\n'
                              : '${recommend.title.toUpperCase()}\n',
                          style: TextStyle(
                            color: yPrimaryColor.withOpacity(0.4),
                          ),
                        ),
                        TextSpan(
                          text: '\$${recommend.price}',
                          style: Theme.of(context).textTheme.button?.copyWith(
                                color: yPrimaryColor,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
