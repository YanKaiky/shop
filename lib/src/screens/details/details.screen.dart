import 'package:flutter/material.dart';
import 'package:shop/src/screens/details/components/body.dart';
import 'package:shop/src/utils/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            padding: EdgeInsets.symmetric(
              horizontal: yDefaultPadding,
            ),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed('/browse'),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite_outline_rounded,
                size: 30,
              ),
              onPressed: () => print('Add Favorite'),
            ),
          ]),
      body: Body(),
    );
  }
}
