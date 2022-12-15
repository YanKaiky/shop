import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class AppMenuDrawer extends StatelessWidget {
  const AppMenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: yPrimaryColor),
            currentAccountPicture:
                Image.network('https://www.github.com/YanKaiky.png'),
            accountName: const Text('Yan Kaiky'),
            accountEmail: const Text('yankaikys@gmail.com'),
            otherAccountsPictures: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.of(context).pushReplacementNamed('/browse'),
          ),
          ListTile(
            leading: const Icon(Icons.local_grocery_store_outlined),
            title: const Text('Store'),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed('/purschase'),
          ),
          Spacer(),
          ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: const Text('Logout'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/login');
            },
          ),
        ],
      ),
    );
  }
}
