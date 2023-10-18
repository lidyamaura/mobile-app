import 'package:flutter/material.dart';

class MakananBeratData {
  final String name;
  final String description;
  final String image;
  final List<String> ingredients;
  final String cookingSteps;
  final String servingMethod;

  MakananBeratData({
    required this.name,
    required this.description,
    required this.image,
    required this.ingredients,
    required this.cookingSteps,
    required this.servingMethod,
  });
}

List<MakananBeratData> makananBeratList = [
  MakananBeratData(
    name: "Nasi Goreng",
    description: "Nasi Goreng lezat dan special",
    image: "assets/nasigoreng.jpeg",
    ingredients: [
      "Nasi",
      "Bawang putih",
      "Kecap",
      "Garam",
      "Lada",
      "Daging ayam",
      "Wortel",
      "Kacang polong",
      "Telur",
    ],
    cookingSteps: "Langkah Memasak Nasi Goreng:\n\n"
        "1. Tumis bawang putih hingga harum.\n"
        "2. Tambahkan potongan daging ayam dan telur, aduk hingga matang.\n"
        "3. Masukkan nasi, kecap, garam, dan lada. Aduk rata.\n"
        "4. Tambahkan wortel dan kacang polong, terus aduk hingga sayuran matang.\n"
        "5. Sajikan panas dengan taburan daun bawang.",
    servingMethod: "Sajikan panas dengan acar dan kerupuk.",
  ),

  MakananBeratData(
    name: 'Ayam Goreng',
    description: 'Ayam Goreng dengan bumbu khas',
    image: 'assets/ayamgoreng.jpeg',
    ingredients: [
      "Ayam",
      "Bumbu khas",
      "Minyak goreng",
      // Tambahkan bahan-bahan lainnya
    ],
    cookingSteps:
        "1. Goreng ayam dengan minyak panas.\n2. Tambahkan bumbu khas.",
    servingMethod: "Sajikan dengan nasi atau lalapan.",
  ),
  MakananBeratData(
    name: 'Sate Ayam',
    description: 'Sate Ayam dengan saus kacang',
    image: 'assets/sateayam.jpeg',
    ingredients: [
      "Daging ayam",
      "Bumbu sate",
      "Kacang tanah",
      // Tambahkan bahan-bahan lainnya
    ],
    cookingSteps:
        "1. Tusuk daging ayam dengan tusukan sate.\n2. Panggang di atas bara api hingga matang.",
    servingMethod: "Sajikan dengan saus kacang dan ketupat.",
  ),
  MakananBeratData(
    name: 'Mie Goreng',
    description: 'Mie Goreng pedas dengan topping',
    image: 'assets/miegoreng.jpeg',
    ingredients: [
      "Mie",
      "Bumbu mie goreng",
      "Sayuran",
      // Tambahkan bahan-bahan lainnya
    ],
    cookingSteps:
        "1. Rebus mie hingga matang.\n2. Tumis bumbu mie goreng dan tambahkan sayuran.",
    servingMethod: "Sajikan panas dengan irisan telur mata sapi di atasnya.",
  ),
  // Tambahkan makanan berat lainnya dengan informasi yang sesuai
];
