import 'package:flutter/material.dart';
import 'package:shop/src/screens/home/components/most.wanted/most.wanted.dart';
import 'package:shop/src/screens/home/components/header.with.search.box.dart';
import 'package:shop/src/screens/home/components/recomended/recomended.clothes.dart';
import 'package:shop/src/screens/home/components/title.with.more.btn.dart';
import 'package:shop/src/screens/lists/most.wanted/most.wanted.screen.dart';
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
          RecomendedClothes(),
          TitleWithMoreBtn(
              title: 'Most wanted',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MostWantedScreen()),
                );
              }),
          MostWanted(),
          SizedBox(height: yDefaultPadding),
        ],
      ),
    );
  }
}
