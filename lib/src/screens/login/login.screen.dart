// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shop/src/screens/login/components/customshape.dart';
import 'package:shop/src/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _AppBar(context),
      body: _body(context, size),
    );
  }

  AppBar _AppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 300,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      flexibleSpace: ClipPath(
        clipper: Customshape(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: yPrimaryColor,
          child: Stack(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/jordan-1-mid.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.7),
              child: Center(
                child: Image.asset(
                  'assets/images/shop.png',
                  width: 150,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  SingleChildScrollView _body(BuildContext context, Size size) {
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: yDefaultPadding + 10),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: yTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Center(child: Text('Sign In to continue')),
              const SizedBox(height: 50),
              TextField(
                onChanged: (value) => email = value,
                cursorColor: yPrimaryColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: yPrimaryColor, //<-- SEE HERE
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                onChanged: (value) => password = value,
                obscureText: true,
                cursorColor: yPrimaryColor,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: yPrimaryColor, //<-- SEE HERE
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: yDefaultPadding + 10),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(yPrimaryColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (email == 'yankaikys@gmail.com' && password == '123') {
                      Navigator.of(context).pushReplacementNamed('/browse');
                    } else {
                      print('Invalid login');
                    }
                  },
                  child: SizedBox(
                    width: size.width / 2,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('New User?'),
                  SizedBox(width: 10),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: yPrimaryColor, fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
