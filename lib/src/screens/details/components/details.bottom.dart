import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class DetailsBottom extends StatelessWidget {
  const DetailsBottom({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(yPrimaryColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Buy now',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.transparent,
              ),
            ),
            child: Text(
              'Description',
              style: TextStyle(color: yPrimaryColor, fontSize: 16),
            ),
          ),
        ),
        SizedBox(height: yDefaultPadding * 2),
      ],
    );
  }
}
