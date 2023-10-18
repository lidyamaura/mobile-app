import 'package:flutter/material.dart';

class KategoriMenu {
  final String name;
  final String description;
  final String image;
  final List<String> ingredients;
  final String cookingSteps;
  final String servingMethod;

  KategoriMenu({
    required this.name,
    required this.description,
    required this.image,
    required this.ingredients,
    required this.cookingSteps,
    required this.servingMethod,
  });
}
