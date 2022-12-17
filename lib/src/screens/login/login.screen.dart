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
      backgroundColor: Colors.white,
      body: _body(size, context),
    );
  }

  SafeArea _body(Size size, BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
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
                    child: TextField(
                      onChanged: (value) => email = value,
                      cursorColor: yPrimaryColor,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: yPrimaryColor),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      onChanged: (value) => password = value,
                      obscureText: true,
                      cursorColor: yPrimaryColor,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: yPrimaryColor),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: yDefaultPadding, horizontal: 16.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(yPrimaryColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (email == 'yankaikys@gmail.com' &&
                            password == '123') {
                          Navigator.of(context).pushReplacementNamed('/browse');
                        } else {
                          print('Invalid login');
                        }
                      },
                      child: SizedBox(
                        width: size.width,
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
