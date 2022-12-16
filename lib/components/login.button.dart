import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({
    Key? key,
    required this.email,
    required this.password,
    required this.size,
  }) : super(key: key);

  final String email;
  final String password;
  final Size size;

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: yDefaultPadding, horizontal: 16.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(yPrimaryColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        onPressed: () {
          print({widget.email, widget.password});

          if (widget.email == 'yankaikys@gmail.com' &&
              widget.password == '123') {
            Navigator.of(context).pushReplacementNamed('/browse');
          } else {
            print('Invalid login');
          }
        },
        child: SizedBox(
          width: widget.size.width,
          height: 50,
          child: Center(
            child: Text(
              'Login',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
