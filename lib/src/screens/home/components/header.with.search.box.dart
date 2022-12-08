import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: yDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: yDefaultPadding,
              right: yDefaultPadding,
              bottom: 36 + yDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: yPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Shop',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(100), //<-- SEE HERE
                  ),
                  child: Image.asset(
                    'assets/images/shop.png',
                    width: 65,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: yDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: yDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: yPrimaryColor.withOpacity(0.18)),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: yPrimaryColor.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
