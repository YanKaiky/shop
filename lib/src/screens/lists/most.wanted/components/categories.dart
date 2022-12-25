import 'package:flutter/material.dart';
import 'package:shop/src/utils/constants.dart';

class Categrories extends StatefulWidget {
  const Categrories({super.key});

  @override
  State<Categrories> createState() => _CategroriesState();
}

class _CategroriesState extends State<Categrories> {
  List<String> categories = [
    'Jordan',
    'Football boots',
    'Hoodies',
    'Accessories'
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: yDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (content, i) => _buildCategory(i),
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
