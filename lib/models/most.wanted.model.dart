import 'package:flutter/material.dart';

class MostWantedModel {
  final String guid;
  final int price;
  final String category;
  final List<String> size;

  final Color? color;

  final String image;
  final String title;
  final String description;

  MostWantedModel(
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
