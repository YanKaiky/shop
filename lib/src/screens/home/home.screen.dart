import 'package:flutter/material.dart';
import 'package:shop/components/app.bottom.navigation.bar.dart';
import 'package:shop/src/screens/home/components/body.dart';
import 'package:shop/src/screens/home/components/drawer/menu.drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: MenuDrawer(),
      body: Body(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
  );
}
