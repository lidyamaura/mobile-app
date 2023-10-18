import 'package:flutter/material.dart';
import 'katduamenu.dart';
import 'detailkatdua.dart'; // Import file detailkatdua.dart

class KategoriDuaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Makanan'),
        backgroundColor: Color(0xFF675D50),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: makananList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigasi ke halaman DetailMakananScreen saat menu diklik
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    DetailMakananScreen(makananData: makananList[index]),
              ));
            },
            child: buildFoodItem(makananList[index]),
          );
        },
      ),
    );
  }

  Widget buildFoodItem(MakananData makananData) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xFFF3DEBA), // Mengubah latar belakang kotak menjadi pink
      ),
      child: Column(
        children: [
          Image.asset(
            makananData.image,
            height: 64.0,
          ),
          SizedBox(height: 16.0),
          Text(
            makananData.name,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif'),
          ),
          SizedBox(height: 8.0),
          Align(
            alignment: Alignment.center,
            child: Text(
              makananData.description,
              textAlign: TextAlign.center, // Membuat deskripsi berada di tengah
            ),
          ),
        ],
      ),
    );
  }
}
