class MakananTempatData {
  final String name;
  final String description;
  final String image;
  final List<String> ingredients;
  final String cookingSteps;
  final String servingMethod;

  MakananTempatData({
    required this.name,
    required this.description,
    required this.image,
    required this.ingredients,
    required this.cookingSteps,
    required this.servingMethod,
  });
}

List<MakananTempatData> makananTempatList = [
  MakananTempatData(
    name: 'Samosa',
    description: 'Makanan ringan yang enak dan renyah',
    image: 'assets/samosa.jpeg', // Ganti dengan path gambar makanan 1
    ingredients: [
      "Kulit pastri",
      "Kentang",
      "Kacang hijau",
      "Bumbu rempah",
    ],
    cookingSteps: "Langkah Membuat Samosa:\n\n"
        "1. Potong kentang dan campur dengan kacang hijau.\n"
        "2. Tambahkan bumbu rempah sesuai selera.\n"
        "3. Bungkus campuran dalam kulit pastri dan bentuk segitiga.\n"
        "4. Goreng hingga kecokelatan.\n"
        "5. Sajikan panas dengan saus.",
    servingMethod: "Sajikan panas dengan saus.",
  ),
  MakananTempatData(
    name: 'Risoles',
    description: 'Rilos sayur, ayam, dan mayo',
    image: 'assets/risoles.jpeg', // Ganti dengan path gambar makanan 2
    ingredients: [
      "Kulit pastri",
      "Ragout ayam/kentang",
      "Telur",
    ],
    cookingSteps: "Langkah Membuat Risoles:\n\n"
        "1. Isi kulit pastri dengan ragout ayam atau kentang.\n"
        "2. Bungkus dalam bentuk lonjong.\n"
        "3. Celupkan dalam telur dan gandum.\n"
        "4. Goreng hingga kecokelatan.\n"
        "5. Sajikan panas.",
    servingMethod: "Sajikan panas.",
  ),
  MakananTempatData(
    name: 'Pisang Coklat',
    description: 'Pisang yang dilapisi coklat leleh',
    image: 'assets/pisangcoklat.jpeg', // Ganti dengan path gambar makanan 3
    ingredients: [
      "Pisang raja",
      "Coklat leleh",
    ],
    cookingSteps: "Langkah Membuat Pisang Coklat:\n\n"
        "1. Potong pisang menjadi potongan kecil.\n"
        "2. Celupkan potongan pisang dalam coklat leleh.\n"
        "3. Dinginkan hingga coklat mengeras.\n"
        "4. Sajikan sebagai cemilan.",
    servingMethod: "Sajikan sebagai cemilan.",
  ),
  MakananTempatData(
    name: 'Roti Bakar',
    description: 'Roti panggang dengan isian selai',
    image: 'assets/rotibakar.jpeg', // Ganti dengan path gambar makanan 4
    ingredients: [
      "Roti tawar",
      "Mentega",
      "Selai",
    ],
    cookingSteps: "Langkah Membuat Roti Bakar:\n\n"
        "1. Oleskan mentega pada roti tawar.\n"
        "2. Panggang roti hingga kecokelatan.\n"
        "3. Oleskan selai sesuai selera.\n"
        "4. Lipat roti menjadi dua.\n"
        "5. Sajikan panas.",
    servingMethod: "Sajikan panas.",
  ),
];
