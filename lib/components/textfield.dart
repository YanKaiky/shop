import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class YTextField extends StatelessWidget {
  const YTextField({
    Key? key,
    required this.label,
    required this.changed,
    required this.size,
    this.obscureText,
  }) : super(key: key);

  final bool? obscureText;
  final String label;
  final Size size;
  final Function(String) changed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: changed,
      obscureText: obscureText ?? false,
      cursorColor: yPrimaryColor,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: yPrimaryColor, //<-- SEE HERE
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
