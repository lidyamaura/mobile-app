class MinumanData {
  final String name;
  final String description;
  final String image;
  final List<String> ingredients;
  final String cookingSteps;
  final String servingMethod;

  MinumanData({
    required this.name,
    required this.description,
    required this.image,
    required this.ingredients,
    required this.cookingSteps,
    required this.servingMethod,
  });
}

List<MinumanData> minumanList = [
  MinumanData(
    name: 'Jus Buah',
    description: 'Minuman segar dari buah',
    image: 'assets/jusbuah.jpeg', // Ganti dengan path gambar minuman 1
    ingredients: [
      "Buah-buahan campuran (misalnya jeruk, apel, semangka)",
      "Gula",
      "Air",
    ],
    cookingSteps: "Langkah Membuat Jus Buah:\n\n"
        "1. Potong buah-buahan menjadi potongan kecil.\n"
        "2. Masukkan buah-buahan ke dalam blender.\n"
        "3. Tambahkan gula sesuai selera.\n"
        "4. Tuang air secukupnya.\n"
        "5. Blend hingga halus dan saring.\n"
        "6. Sajikan dengan es batu.",
    servingMethod: "Sajikan dingin dengan es batu.",
  ),
  MinumanData(
    name: 'Es Campur',
    description: 'Minuman es dengan kolak dan susu',
    image: 'assets/escampur.jpeg', // Ganti dengan path gambar minuman 2
    ingredients: [
      "Es serut",
      "Kolak (campuran pisang, nangka, ketan hitam)",
      "Susu kental manis",
    ],
    cookingSteps: "Langkah Membuat Es Campur:\n\n"
        "1. Letakkan es serut di atas mangkuk.\n"
        "2. Tuangkan kolak di atas es serut.\n"
        "3. Tambahkan susu kental manis sesuai selera.\n"
        "4. Sajikan segera.",
    servingMethod: "Sajikan segera.",
  ),
  MinumanData(
    name: 'Milk Tea',
    description: 'Minuman teh susu yang nikmat',
    image: 'assets/milktea.jpeg', // Ganti dengan path gambar minuman 3
    ingredients: [
      "Teh hitam",
      "Susu cair",
      "Gula",
      "Es batu",
    ],
    cookingSteps: "Langkah Membuat Milk Tea:\n\n"
        "1. Seduh teh hitam dengan air panas dan tambahkan gula sesuai selera.\n"
        "2. Dinginkan teh dengan es batu.\n"
        "3. Tuangkan susu cair ke dalam teh.\n"
        "4. Aduk rata dan sajikan dengan es batu.",
    servingMethod: "Sajikan dingin dengan es batu.",
  ),
  MinumanData(
    name: 'Kopi Susu',
    description: 'Minuman kopi dengan susu yang lezat',
    image: 'assets/kopisusu.jpeg', // Ganti dengan path gambar minuman 4
    ingredients: [
      "Kopi bubuk",
      "Susu cair",
      "Gula (opsional)",
      "Es batu",
    ],
    cookingSteps: "Langkah Membuat Kopi Susu:\n\n"
        "1. Seduh kopi bubuk dengan air panas dan tambahkan gula sesuai selera.\n"
        "2. Dinginkan kopi dengan es batu.\n"
        "3. Tuangkan susu cair ke dalam kopi.\n"
        "4. Aduk rata dan sajikan dengan es batu.",
    servingMethod: "Sajikan dingin dengan es batu.",
  ),
];
