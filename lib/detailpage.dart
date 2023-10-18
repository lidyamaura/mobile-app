import 'package:flutter/material.dart';
import 'makanberat.dart'; // Impor file makanberat.dart

class DetailPage extends StatelessWidget {
  final MakananBeratData makananBeratData;

  DetailPage({
    required this.makananBeratData,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double desiredImageHeight = screenHeight / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          makananBeratData.name,
          style: TextStyle(
            color: Colors.black, // Mengubah warna teks menjadi hitam
            fontFamily:
                'Baguette Script', // Mengatur font menjadi "Baguette Script"
          ),
        ),
        backgroundColor: Color(0xFFABC4AA),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: desiredImageHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(makananBeratData.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 8.0),
                    Text(
                      makananBeratData.description,
                      style: TextStyle(
                        color: Color(0xFF111111),
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                        letterSpacing: 0.07,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Bahan-bahan:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: makananBeratData.ingredients.length,
                      itemBuilder: (context, index) {
                        final ingredient = makananBeratData.ingredients[index];
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Text('- $ingredient'),
                        );
                      },
                    ),
                    SizedBox(height: 16.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Cara Memasak:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        makananBeratData.cookingSteps,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Cara Penyajian:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        makananBeratData.servingMethod,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
