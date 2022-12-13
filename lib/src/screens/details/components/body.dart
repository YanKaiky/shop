import 'package:flutter/material.dart';
import 'package:shop/src/screens/details/components/details.bottom.dart';
import 'package:shop/src/screens/details/components/stack.image.dart';
import 'package:shop/src/utils/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          StackImage(size: size),
          SizedBox(height: yDefaultPadding),
          DetailsBottom(size: size)
        ],
      ),
    );
  }
}
