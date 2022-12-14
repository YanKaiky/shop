import 'package:flutter/material.dart';

class ButtonColor extends StatelessWidget {
  const ButtonColor({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: null,
        onPressed: () => print('Color'),
      ),
    );
  }
}
