import 'package:flutter/material.dart';
import 'package:shop/src/screens/details/components/fittings/button.color.dart';
import 'package:shop/src/screens/details/components/fittings/button.size.dart';
import 'package:shop/src/utils/constants.dart';

class FittingSize extends StatelessWidget {
  const FittingSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: yDefaultPadding),
      child: Column(
        children: [
          Divider(),
          Row(
            children: const [
              ButtonSize(value: '38'),
              SizedBox(width: 5),
              ButtonSize(value: '39'),
              SizedBox(width: 5),
              ButtonSize(value: '40'),
              SizedBox(width: 5),
              ButtonSize(value: '41'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: const [
              ButtonColor(color: Colors.red),
              SizedBox(width: 5),
              ButtonColor(color: Colors.purple),
              SizedBox(width: 5),
              ButtonColor(color: Colors.orange),
              SizedBox(width: 5),
              ButtonColor(color: Colors.black),
              SizedBox(width: 5),
              ButtonColor(color: Colors.blue),
              SizedBox(width: 5),
            ],
          )
        ],
      ),
    );
  }
}
