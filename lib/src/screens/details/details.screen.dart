import 'package:flutter/material.dart';
import 'package:shop/src/screens/details/components/body.dart';
import 'package:shop/src/screens/details/components/details.bottom.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Body(),
      bottomNavigationBar: DetailsBottom(size: size),
    );
  }
}
