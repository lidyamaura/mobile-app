import 'package:flutter/material.dart';
import 'kattigamenu.dart';
import 'detailkattiga.dart'; // Import file detailkattiga.dart

class KategoriTigaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Minuman'),
        backgroundColor: Color(0xFF675D50),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: minumanList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigasi ke halaman DetailMinumanScreen saat menu diklik
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    DetailMinumanScreen(minumanData: minumanList[index]),
              ));
            },
            child: buildFoodItem(minumanList[index]),
          );
        },
      ),
    );
  }

  Widget buildFoodItem(MinumanData minumanData) {
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
            minumanData.image,
            height: 64.0,
          ),
          SizedBox(height: 16.0),
          Text(
            minumanData.name,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif'),
          ),
          SizedBox(height: 8.0),
          Align(
            alignment: Alignment.center,
            child: Text(
              minumanData.description,
              textAlign: TextAlign.center, // Membuat deskripsi berada di tengah
            ),
          ),
        ],
      ),
    );
  }
}
