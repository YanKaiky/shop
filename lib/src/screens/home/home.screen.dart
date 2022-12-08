import 'package:flutter/material.dart';
import 'package:shop/components/app.bottom.navigation.bar.dart';
import 'package:shop/src/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.menu_rounded),
      onPressed: () => print('pressed'),
    ),
  );
}
