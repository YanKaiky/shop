import 'package:flutter/material.dart';
import 'package:shop/repositories/product.repository.dart';
import 'package:shop/src/screens/details/details.screen.dart';
import 'package:shop/src/screens/lists/features/components/categories.dart';
import 'package:shop/src/screens/lists/features/components/item.card.dart';
import 'package:shop/src/utils/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final products = ProductRepository.products;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: yDefaultPadding),
          child: Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_rounded),
              ),
              SizedBox(width: 15),
              Text(
                'Feature Clothers',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        Categrories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: yDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: yDefaultPadding,
                crossAxisSpacing: yDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, i) => ItemCard(
                product: products[i],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[i],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
