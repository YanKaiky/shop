import 'package:flutter/material.dart';
import 'package:shop/src/screens/dashboard/dashboard.screen.dart';
import 'package:shop/src/screens/purchase/purchase.screen.dart';
import 'package:shop/src/screens/settings/settings.screen.dart';
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
              MaterialPageRoute(builder: (context) => SettingsScreen()),
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
          // ADMIN
          ListTile(
            leading: const Icon(Icons.data_saver_off_outlined),
            title: const Text('Dashboard'),
            subtitle: Text(
              'Admin'.toUpperCase(),
              style: TextStyle(color: Colors.grey, fontSize: 8),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardScreen()),
            ),
          ),
          Divider(),
          SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.woman_rounded),
            title: const Text('Women'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PurchaseScreen()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.man_rounded),
            title: const Text('Men'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PurchaseScreen()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.child_care_rounded),
            title: const Text("Children's"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PurchaseScreen()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.diamond_outlined),
            title: const Text("Accessories"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PurchaseScreen()),
            ),
          ),
          Spacer(),
          Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
