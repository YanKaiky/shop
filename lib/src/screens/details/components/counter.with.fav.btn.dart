import 'package:flutter/material.dart';
import 'package:shop/src/screens/details/components/cart.counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Colors.red[400],
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.favorite_rounded,
            color: Colors.white,
            size: 20,
          ),
        )
      ],
    );
  }
}
