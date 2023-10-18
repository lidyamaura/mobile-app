import 'package:flutter/material.dart';
import 'katduamenu.dart';

class DetailMakananScreen extends StatelessWidget {
  final MakananData makananData;

  DetailMakananScreen({required this.makananData});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double halfScreenHeight = screenHeight / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          makananData.name,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Baguette Script',
          ),
        ),
        backgroundColor: Color(0xFFABC4AA),
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
                  makananData.image, // Gambar kue
                  fit: BoxFit.cover, // Sesuaikan gambar dengan ukuran container
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                makananData.name, // Nama kue
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                makananData.description, // Deskripsi kue
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
              for (var ingredient in makananData.ingredients)
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
                  makananData.cookingSteps,
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
                  makananData.servingMethod,
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
