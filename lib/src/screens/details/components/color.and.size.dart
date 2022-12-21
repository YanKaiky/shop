import 'package:flutter/material.dart';
import 'package:shop/models/products.model.dart';
import 'package:shop/src/utils/constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Color'),
              Row(
                children: [
                  ColorDot(color: Colors.blue[600]),
                  ColorDot(
                    color: Colors.red[700],
                    selected: true,
                  ),
                  ColorDot(color: Colors.yellow),
                  ColorDot(color: Colors.green[700]),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: yTextColor),
              children: [
                TextSpan(text: 'Size\n'),
                TextSpan(
                  text: product.size[1],
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color? color;
  final bool selected;

  const ColorDot({
    Key? key,
    required this.color,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: yDefaultPadding / 4,
        right: yDefaultPadding / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: selected ? (color)! : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
