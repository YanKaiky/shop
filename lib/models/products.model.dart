import 'package:flutter/material.dart';

class ProductModel {
  final String guid;
  final int price;
  final List<String> size;

  final List<Color?> color;

  final String image;
  final String title;
  final String description;

  ProductModel(
    this.guid,
    this.price,
    this.size,
    this.color,
    this.image,
    this.title,
    this.description,
  );
}

List<ProductModel> products = [
  ProductModel(
    '700676ca-61f8-477f-98c9-95fe0c687766',
    1999,
    ['38', '39', '40', '41'],
    [Colors.red, Colors.purple, Colors.yellow[800], Colors.black, Colors.blue],
    'assets/png/nike-phantom-ultra-venom.png',
    'Ultra Venom',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
  ProductModel(
    '275e5217-719b-47d8-b8ad-4141a5100c0b',
    309,
    ['38', '39', '40', '41'],
    [Colors.red, Colors.purple, Colors.yellow[800], Colors.black, Colors.blue],
    'assets/png/nike-beco-2-black.png',
    'Nike Beco 2',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
  ProductModel(
    'e24a1099-a7f1-4ca0-ab3c-4b2cc10f3f92',
    2100,
    ['38', '39', '40', '41'],
    [Colors.red],
    'assets/png/jordan-1-mid.png',
    'Joran 1 Mid',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
  ProductModel(
    'a0e7dd39-fa09-483c-bc6c-bab67c17e21f',
    2200,
    ['38', '39', '40', '41'],
    [Colors.black],
    'assets/png/air-jordan-1-zoom-confort.png',
    'Air Jordan 1 Zoom Confort',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
  ProductModel(
    'ab641a76-07bf-44b6-a87c-e1683898e811',
    620,
    ['P', 'M', 'G', 'GG'],
    [Colors.black],
    'assets/png/nike-black.png',
    'Nike Black',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
  ProductModel(
    'c1433c5e-a478-4d92-94e6-eae582da5227',
    490,
    ['P', 'M', 'G', 'GG'],
    [Colors.black],
    'assets/png/nike-black-2.png',
    'Nike Black 2',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
];
