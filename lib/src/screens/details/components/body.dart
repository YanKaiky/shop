import 'package:flutter/material.dart';
import 'package:shop/src/screens/details/components/image.and.icons.dart';
import 'package:shop/src/screens/details/components/title.and.price.dart';
import 'package:shop/src/utils/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: 'Air Jordan 1 Zoom',
            category: 'Confort',
            price: 1429,
          ),
          SizedBox(height: yDefaultPadding),
          Row(
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
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: yDefaultPadding * 2),
            ],
          )
        ],
      ),
    );
  }
}
