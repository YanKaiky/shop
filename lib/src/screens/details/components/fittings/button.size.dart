import 'package:flutter/material.dart';

class ButtonSize extends StatelessWidget {
  const ButtonSize({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.black, width: 1.0),
      ),
      child: SizedBox(
        child: Text(
          value,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
      onPressed: () {
        print('Number');
      },
    );
  }
}
