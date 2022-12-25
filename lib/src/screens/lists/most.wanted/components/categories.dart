import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class Categrories extends StatefulWidget {
  const Categrories({super.key});

  @override
  State<Categrories> createState() => _CategroriesState();
}

class _CategroriesState extends State<Categrories> {
  List<String> categories = [
    'All',
    'Recents',
    'Promotion',
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: yDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (content, i) => _buildCategory(i),
          separatorBuilder: (content, _) => SizedBox(width: size.width / 6),
        ),
      ),
    );
  }

  Widget _buildCategory(int i) {
    return GestureDetector(
      onTap: () {
        setState(() {
          index = i;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: yDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[i],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: index == i ? yTextColor : Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: yDefaultPadding / 4),
              height: 2,
              width: 30,
              color: index == i ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
