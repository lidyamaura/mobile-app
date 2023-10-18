class MakananData {
  final String name;
  final String description;
  final String image;
  final List<String> ingredients;
  final String cookingSteps;
  final String servingMethod;

  MakananData({
    required this.name,
    required this.description,
    required this.image,
    required this.ingredients,
    required this.cookingSteps,
    required this.servingMethod,
  });
}

List<MakananData> makananList = [
  MakananData(
    name: 'Nasi Goreng',
    description: 'Nasi Goreng lezat dan special',
    image: 'assets/nasigoreng.jpeg', // Ganti dengan path gambar makanan 1
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
  MakananData(
    name: 'Mie Goreng',
    description: 'Mie Goreng pedas dengan topping',
    image: 'assets/miegoreng.jpeg', // Ganti dengan path gambar makanan 2
    ingredients: [
      "Mie",
      "Bawang putih",
      "Kecap",
      "Garam",
      "Lada",
      "Daging ayam",
      "Telur",
      "Sawi hijau",
      "Bakso",
    ],
    cookingSteps: "Langkah Memasak Mie Goreng:\n\n"
        "1. Tumis bawang putih hingga harum.\n"
        "2. Tambahkan potongan daging ayam dan telur, aduk hingga matang.\n"
        "3. Masukkan mie, kecap, garam, dan lada. Aduk rata.\n"
        "4. Tambahkan sayur sawi hijau dan bakso, terus aduk hingga sayuran layu.\n"
        "5. Sajikan panas dengan irisan telur dadar di atasnya.",
    servingMethod: "Sajikan panas dengan saus sambal.",
  ),
  MakananData(
    name: 'Sate Ayam',
    description: 'Sate Ayam dengan saus kacang',
    image: 'assets/sateayam.jpeg', // Ganti dengan path gambar makanan 3
    ingredients: [
      "Daging ayam",
      "Bawang putih",
      "Kecap manis",
      "Bawang merah",
      "Kemiri",
      "Lada",
      "Garam",
      "Gula merah",
      "Serai",
    ],
    cookingSteps: "Langkah Memasak Sate Ayam:\n\n"
        "1. Haluskan bawang putih, bawang merah, kemiri, lada, garam, dan gula merah.\n"
        "2. Campurkan hasil halusan dengan kecap manis.\n"
        "3. Potong daging ayam menjadi dadu, lalu marinasi dengan campuran tersebut.\n"
        "4. Tusuk daging ayam dengan tusukan sate.\n"
        "5. Bakar sate hingga matang dan berwarna kecoklatan.\n"
        "6. Sajikan dengan bumbu kacang dan lontong.",
    servingMethod: "Sajikan panas dengan bumbu kacang.",
  ),
  MakananData(
    name: 'Ayam Goreng',
    description: 'Ayam Goreng dengan bumbu khas',
    image: 'assets/ayamgoreng.jpeg', // Ganti dengan path gambar makanan 4
    ingredients: [
      "Daging ayam",
      "Bawang putih",
      "Kecap manis",
      "Kecap asin",
      "Garam",
      "Merica",
      "Lengkuas",
      "Serai",
      "Daun salam",
    ],
    cookingSteps: "Langkah Memasak Ayam Goreng:\n\n"
        "1. Haluskan bawang putih, garam, merica, lengkuas, dan serai.\n"
        "2. Lumuri daging ayam dengan campuran tersebut dan diamkan selama 1 jam.\n"
        "3. Goreng ayam hingga matang dan berwarna kecoklatan.\n"
        "4. Sajikan dengan nasi hangat dan lalapan.",
    servingMethod: "Sajikan panas dengan nasi dan lalapan.",
  ),
];
