import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class FittingSize extends StatelessWidget {
  const FittingSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: yDefaultPadding),
      child: Column(
        children: [
          Divider(),
          Row(
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 1.0),
                ),
                child: SizedBox(
                  child: Text(
                    '38',
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
              ),
              SizedBox(width: 5),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 1.0),
                ),
                child: SizedBox(
                  child: Text(
                    '39',
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
              ),
              SizedBox(width: 5),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 1.0),
                ),
                child: SizedBox(
                  child: Text(
                    '40',
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
              ),
              SizedBox(width: 5),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 1.0),
                ),
                child: SizedBox(
                  child: Text(
                    '41',
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
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
