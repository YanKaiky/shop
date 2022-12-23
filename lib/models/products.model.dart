import 'package:flutter/material.dart';

class ProductModel {
  final String guid;
  final int price;
  final String category;
  final List<String> size;

  final Color? color;

  final String image;
  final String title;
  final String description;

  ProductModel(
    this.guid,
    this.price,
    this.category,
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
    'Football Boots',
    ['38', '39', '40', '41'],
    Colors.black,
    'assets/images/nike-phantom-ultra-venom.png',
    'Ultra Venom',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
  ProductModel(
    '27dbceab-c7fd-469e-a046-d212ce0d6be6',
    810,
    'Football Boots',
    ['38', '39', '40', '41'],
    Colors.amber[700],
    'assets/images/mercurial-superfly-9-academy.png',
    'Mercurial Superfly 9 Academy',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
  ProductModel(
    'f8971742-f107-47cd-b025-721007dc0efc',
    329,
    'Football Boots',
    ['38', '39', '40', '41'],
    Colors.black,
    'assets/images/nike-beco-2-black.png',
    'Nike Beco 2 Black',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
  ProductModel(
    '6aa32254-a0a9-4905-8b87-efbed9dc7baa',
    309,
    'Football Boots',
    ['38', '39', '40', '41'],
    Colors.blueAccent,
    'assets/images/nike-beco-2.png',
    'Nike Beco 2 Blue',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
  ProductModel(
    'f755ac0a-9dc8-4a23-81d3-761460eba4a9',
    369,
    'Football Boots',
    ['38', '39', '40', '41'],
    Colors.yellow[700],
    'assets/images/nike-mercurial-vapor-15-club.png',
    'Nike Mercurial Vapor 15 Club',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
  ProductModel(
    'a3b0fcc6-afe7-4b96-990b-8828fb070e29',
    300,
    'Football Boots',
    ['38', '39', '40', '41'],
    Colors.blue,
    'assets/images/nike-mercurial-superfly-8-club.png',
    'Nike Mercurial Superfly 8 Club',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
  ProductModel(
    '89c51ef2-8e5a-4530-aa20-7254da95eac9',
    499,
    'Football Boots',
    ['38', '39', '40', '41'],
    Colors.green[100],
    'assets/images/nike-phantom-gt2-academy.png',
    'Nike Phantom GT2 Academy',
    'Exercitation reprehenderit culpa minim dolore non velit. Aliquip sunt excepteur quis do esse et magna aliquip reprehenderit quis anim eu qui laboris. Reprehenderit irure nisi eiusmod minim quis esse ea.',
  ),
];
