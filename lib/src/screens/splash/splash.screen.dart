import 'package:flutter/material.dart';
import 'package:shop/src/utils/user.secure.storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    final email = await UserSecureStorage.getEmail();
    final password = await UserSecureStorage.getPassword();

    if (email == 'yankaikys@gmail.com' && password == '123') {
      Navigator.of(context).pushReplacementNamed('/browse');
    } else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/images/shop.png',
          width: 125,
        ),
      ),
    );
  }
}
