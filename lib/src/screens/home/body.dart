import 'package:flutter/material.dart';
import 'package:shop/src/screens/home/header.with.search.box.dart';
import 'package:shop/src/screens/home/recomends.clothes.dart';
import 'package:shop/src/screens/home/title.with.more.btn.dart';

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
        ],
      ),
    );
  }
}
