import 'package:flutter/material.dart';
import 'package:shop/src/screens/home/components/fashion/fashion.clothes.dart';
import 'package:shop/src/screens/home/components/features/featured.clothes.dart';
import 'package:shop/src/screens/home/components/header.with.search.box.dart';
import 'package:shop/src/screens/home/components/recomends/recomends.clothes.dart';
import 'package:shop/src/screens/home/components/title.with.more.btn.dart';
import 'package:shop/src/screens/lists/features/feature.clothers.screen.dart';
import 'package:shop/src/utils/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recomended', press: () {}),
          RecomendsClothes(),
          TitleWithMoreBtn(
              title: 'Feature clothers',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeatureClothers()),
                );
              }),
          FeaturedClothes(),
          TitleWithMoreBtn(title: 'Fashion', press: () {}),
          FashionClothes(),
          SizedBox(height: yDefaultPadding),
        ],
      ),
    );
  }
}
