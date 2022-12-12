import 'package:flutter/material.dart';
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
        ],
      ),
    );
  }
}
