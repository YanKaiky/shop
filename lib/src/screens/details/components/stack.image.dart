import 'package:flutter/material.dart';
import 'package:shop/src/screens/details/components/title.and.price.dart';
import 'package:shop/src/utils/constants.dart';

class StackImage extends StatelessWidget {
  const StackImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.8,
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: yDefaultPadding * 2,
              ),
              child: Stack(
                children: [
                  SizedBox(
                    child: Image.asset(
                      'assets/images/air-jordan-1-zoom-confort.png',
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.symmetric(
                          horizontal: yDefaultPadding,
                        ),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: yPrimaryColor,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.favorite_outline_rounded,
                          size: 30,
                        ),
                        onPressed: () => print('Add Favorite'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TitleAndPrice(
              title: 'Air Jordan 1 Zoom',
              category: 'Confort',
              price: 1429,
            ),
            Padding(
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
