import 'package:flutter/material.dart';
import 'katempatmenu.dart';

class DetailMakananTempatScreen extends StatelessWidget {
  final MakananTempatData makananTempatData;

  DetailMakananTempatScreen({required this.makananTempatData});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double halfScreenHeight = screenHeight / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          makananTempatData.name, // Judul halaman sesuai nama kue
          style: TextStyle(
            color: Colors.black, // Mengubah warna teks menjadi hitam
            fontFamily:
                'Baguette Script', // Mengatur font menjadi "Baguette Script"
          ),
        ),
        backgroundColor: Color(0xFFABC4AA), // Warna latar belakang AppBar
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: halfScreenHeight, // Tinggi gambar setengah layar
                child: Image.asset(
                  makananTempatData.image, // Gambar kue
                  fit: BoxFit.cover, // Sesuaikan gambar dengan ukuran container
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                makananTempatData.name, // Nama kue
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                makananTempatData.description, // Deskripsi kue
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Bahan-bahan:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              for (var ingredient in makananTempatData.ingredients)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '- $ingredient',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cara Memasak:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  makananTempatData.cookingSteps,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cara Penyajian:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  makananTempatData.servingMethod,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
