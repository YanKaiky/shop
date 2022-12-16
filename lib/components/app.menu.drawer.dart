import 'package:flutter/material.dart';
import 'package:shop/components/biometric.dart';
import 'package:shop/src/screens/login/login.screen.dart';
import 'package:shop/src/screens/purchase/purchase.screen.dart';
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
            onDetailsPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Biometric()),
            ),
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
            leading: const Icon(Icons.local_grocery_store_outlined),
            title: const Text('Store'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PurchaseScreen()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined),
            title: const Text('Profile'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Biometric()),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ListTile(
              leading: const Icon(Icons.logout_rounded),
              title: const Text('Logout'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
