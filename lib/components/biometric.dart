// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shop/src/screens/profile/profile.screen.dart';
import 'package:shop/src/utils/constants.dart';

class Biometric extends StatefulWidget {
  const Biometric({super.key});

  @override
  State<Biometric> createState() => _BiometricState();
}

class _BiometricState extends State<Biometric> {
  LocalAuthentication auth = LocalAuthentication();
  late bool _canCheckBiometric;
  late List<BiometricType> _availableBiometrics;
  String autherized = 'No autherized';

  Future<void> _checkBiometric() async {
    bool canCheckBiometric = false;

    try {
      canCheckBiometric = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _canCheckBiometric = canCheckBiometric;
    });
  }

  Future<void> _getAvailableBiometric() async {
    List<BiometricType> availableBiometric = [];

    try {
      availableBiometric = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _availableBiometrics = availableBiometric;
    });
  }

  Future<void> _authenticate() async {
    bool autheticated = false;

    try {
      autheticated = await auth.authenticate(
        localizedReason: 'Scan your fingerprint to authenticate',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: false,
        ),
      );

      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(),
        ),
      );
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      autherized =
          autheticated ? 'Autherized success' : 'Failed to authenticate';
      print(autherized);
    });
  }

  @override
  void initState() {
    super.initState();
    _checkBiometric();
    _getAvailableBiometric();
    _authenticate();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: yDefaultPadding * 2),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.grey,
                        size: 35,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50.0),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.fingerprint_rounded,
                            color: Colors.blue, size: 100),
                        Text(
                          'Fingerprint Auth',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15.0),
                          width: 300,
                          child: Text(
                            'Authenticated using your biometric instead of your password',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, height: 1.5),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15.0),
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 14.0, horizontal: 24.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              onPressed: _authenticate,
                              child: SizedBox(
                                width: size.width,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    'Anthenticate',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
