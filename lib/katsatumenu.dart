class KueData {
  final String name;
  final String description;
  final String image;
  final List<String> ingredients;
  final String cookingSteps;
  final String servingMethod;

  KueData({
    required this.name,
    required this.description,
    required this.image,
    required this.ingredients,
    required this.cookingSteps,
    required this.servingMethod,
  });
}

List<KueData> kueList = [
  KueData(
    name: 'Brownies',
    description: 'Brownies lezat dengan cokelat pekat',
    image: 'assets/brownies.jpeg', // Ganti dengan path gambar kue 1
    ingredients: [
      "200 gram cokelat pekat",
      "100 gram mentega",
      "200 gram gula",
      "3 telur",
      "100 gram tepung terigu",
      "50 gram bubuk kakao",
      "1/2 sendok teh baking powder",
      "1/4 sendok teh garam",
      "100 gram kacang kenari (opsional)",
    ],
    cookingSteps: "Langkah Membuat Brownies:\n\n"
        "1. Lelehkan cokelat pekat dan mentega dengan cara double boiler atau microwave.\n"
        "2. Campurkan gula ke dalam campuran cokelat dan mentega, aduk rata.\n"
        "3. Tambahkan telur satu per satu, aduk rata setiap kali ditambahkan.\n"
        "4. Campurkan tepung terigu, bubuk kakao, baking powder, dan garam, aduk hingga tercampur baik.\n"
        "5. Jika suka, tambahkan kacang kenari cincang ke dalam adonan.\n"
        "6. Tuangkan adonan ke dalam loyang yang telah diolesi mentega dan dialasi kertas roti.\n"
        "7. Panggang dalam oven yang telah dipanaskan pada suhu 180 derajat Celsius selama 25-30 menit.\n"
        "8. Setelah dingin, potong dan sajikan.",
    servingMethod: "Sajikan brownies dengan es krim atau taburan gula bubuk",
  ),
  KueData(
    name: 'Cookies',
    description: 'Kue cookies renyah dengan cokelat chip',
    image: 'assets/cookies.jpeg', // Ganti dengan path gambar kue 2
    ingredients: [
      "200 gram mentega",
      "150 gram gula",
      "2 telur",
      "300 gram tepung terigu",
      "1/2 sendok teh baking soda",
      "1/2 sendok teh garam",
      "200 gram cokelat chip",
    ],
    cookingSteps: "Langkah Membuat Cookies:\n\n"
        "1. Kocok mentega dan gula hingga lembut.\n"
        "2. Tambahkan telur satu per satu, kocok rata.\n"
        "3. Campurkan tepung terigu, baking soda, dan garam, aduk hingga tercampur baik.\n"
        "4. Masukkan cokelat chip ke dalam adonan.\n"
        "5. Bentuk adonan menjadi bulatan kecil dan letakkan di atas loyang.\n"
        "6. Panggang dalam oven yang telah dipanaskan pada suhu 180 derajat Celsius selama 10-12 menit hingga matang.\n"
        "7. Dinginkan sebentar sebelum disajikan.",
    servingMethod: "Sajikan cookies dengan segelas susu hangat",
  ),
  KueData(
    name: 'Donat',
    description: 'Donat lembut dengan lapisan gula halus',
    image: 'assets/donat.jpeg', // Ganti dengan path gambar kue 2
    ingredients: [
      "250 gram tepung terigu",
      "1 sachet ragi instan",
      "50 gram gula",
      "1/2 sendok teh garam",
      "1 telur",
      "100 ml susu hangat",
      "50 gram mentega",
      "Minyak untuk menggoreng",
    ],
    cookingSteps: "Langkah Membuat Doant:\n\n"
        "1. Campurkan tepung terigu, ragi instan, gula, dan garam dalam mangkuk besar.\n"
        "2. Tambahkan telur, susu hangat, dan mentega, uleni hingga adonan elastis.\n"
        "3. Diamkan adonan selama 1 jam hingga mengembang.\n"
        "4. Giling adonan hingga setebal 1 cm dan potong dengan cetakan donat.\n"
        "5. Panaskan minyak dalam wajan, goreng donat hingga kecokelatan.\n"
        "6. Angkat dan tiriskan, lalu taburi dengan gula halus.\n"
        "7. Sajikan donat hangat atau dingin.",
    servingMethod: "Sajikan donat dengan secangkir kopi atau teh",
  ),
  KueData(
    name: 'Cupcake',
    description: 'Cupcake lembut dengan toping',
    image: 'assets/cupcake.jpeg', // Ganti dengan path gambar kue 2
    ingredients: [
      "125 gram mentega",
      "125 gram gula",
      "2 telur",
      "125 gram tepung terigu",
      "1/2 sendok teh baking powder",
      "1/2 sendok teh vanili",
      "3 sendok makan susu",
    ],
    cookingSteps: "Langkah Membuat Tooping:\n\n"
        "1. Kocok mentega dan gula hingga lembut.\n"
        "2. Tambahkan telur satu per satu, kocok rata setiap kali ditambahkan.\n"
        "3. Campurkan tepung terigu, baking powder, dan vanili, aduk rata.\n"
        "4. Tambahkan susu, aduk hingga adonan lembut.\n"
        "5. Tuangkan adonan ke dalam cupcake liner dalam loyang muffin.\n"
        "6. Panggang dalam oven yang telah dipanaskan pada suhu 180 derajat Celsius selama 15-20 menit hingga matang.\n"
        "7. Hiasi dengan toping sesuai selera.\n"
        "8. Sajikan cupcake setelah dingin.",
    servingMethod: "Hias cupcake dengan buttercream atau cokelat leleh",
  ),
  KueData(
    name: 'Bolu',
    description: 'Bolu lembut dengan rasa vanili',
    image: 'assets/bolu.jpeg', // Ganti dengan path gambar kue 2
    ingredients: [
      "150 gram tepung terigu",
      "150 gram gula",
      "4 telur",
      "1 sendok teh baking powder",
      "1/2 sendok teh vanili",
      "50 ml air",
    ],
    cookingSteps: "Langkah Membuat Bolu:\n\n"
        "1. Kocok telur dan gula hingga mengembang dan berwarna putih.\n"
        "2. Campurkan tepung terigu, baking powder, dan vanili, aduk rata.\n"
        "3. Tuangkan air ke dalam adonan, aduk hingga rata.\n"
        "4. Masukkan adonan ke dalam loyang yang telah diolesi mentega dan dialasi kertas roti.\n"
        "5. Panggang dalam oven yang telah dipanaskan pada suhu 180 derajat Celsius selama 30-35 menit hingga matang.\n"
        "6. Dinginkan sebentar sebelum dipotong dan disajikan.",
    servingMethod: "Sajikan bolu sebagai camilan atau hidangan penutup",
  ),
  KueData(
    name: 'Pie Mini',
    description: 'Pie mini dengan berbagai isian',
    image: 'assets/pie.jpeg', // Ganti dengan path gambar kue 2
    ingredients: [
      "250 gram tepung terigu",
      "125 gram mentega",
      "1/2 sendok teh garam",
      "100 ml air es",
      "Isian (contoh: daging sapi cincang, kentang, wortel)",
    ],
    cookingSteps: "Langkah Membuat Pie Mini:\n\n"
        "1. Campurkan tepung terigu dan garam dalam mangkuk.\n"
        "2. Tambahkan mentega dan aduk hingga berbutir.\n"
        "3. Tuangkan air es sedikit demi sedikit, aduk hingga adonan terbentuk.\n"
        "4. Dinginkan adonan selama 30 menit.\n"
        "5. Giling adonan dan potong menjadi bulatan kecil.\n"
        "6. Isi dengan bahan pilihan dan tutup dengan adonan lainnya.\n"
        "7. Panggang dalam oven yang telah dipanaskan pada suhu 180 derajat Celsius selama 20-25 menit hingga kecokelatan.\n"
        "8. Dinginkan sebentar sebelum disajikan.",
    servingMethod: "Sajikan pie mini sebagai camilan atau hidangan ringan",
  ),
  // Tambahkan data kue lainnya sesuai kebutuhan
];
