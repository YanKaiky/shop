import 'package:flutter/material.dart';
import 'package:shop/components/login.button.dart';
import 'package:shop/components/textfield.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipPath(
                    clipper: Customshape(),
                    child: Container(
                      height: 300,
                      color: yPrimaryColor,
                      child: Stack(
                        children: [
                          SizedBox(
                            child: Image.asset(
                              'assets/images/jordan-1-mid.png',
                              fit: BoxFit.cover,
                              width: size.width,
                            ),
                          ),
                          Container(
                            height: size.height / 2,
                            color: Colors.black.withOpacity(0.7),
                            child: Center(
                              child: Image.asset(
                                'assets/images/shop.png',
                                width: 150,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: yTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Sign In to continue',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: YTextField(
                      changed: (value) => email = value,
                      label: 'Email',
                      size: size,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: YTextField(
                      obscureText: true,
                      changed: (value) => password = value,
                      label: 'Password',
                      size: size,
                    ),
                  ),
                  SizedBox(height: 10),
                  LoginButton(email: email, password: password, size: size),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('New User?'),
                      SizedBox(width: 5),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: yPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
