import 'package:flutter/material.dart';
import 'package:shop/src/screens/details/details.screen.dart';
import 'package:shop/src/screens/favorites/favorites.screen.dart';
import 'package:shop/src/screens/home/home.screen.dart';
import 'package:shop/src/screens/notifications/notifications.screen.dart';
import 'package:shop/src/screens/purchase/purchase.screen.dart';
import 'package:shop/src/utils/constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      theme: ThemeData(
        scaffoldBackgroundColor: yBackgroundColor,
        primarySwatch: Colors.green,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: yTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          backgroundColor: yPrimaryColor, //use your hex code here
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
        '/favorites': (context) => FavoritesScreen(),
        '/notifications': (context) => NotificationsScreen(),
        '/purschase': (context) => PurchaseScreen(),
      },
    );
  }
}
